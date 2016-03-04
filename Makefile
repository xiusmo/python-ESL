python_CFLAGS = $(shell python2 ./python-config --includes)
python_LDFLAGS = $(shell python2 ./python-config --ldflags)

CFLAGS = -I. -fPIC
CXXFLAGS = $(CFLAGS) $(python_CFLAGS)
LDFLAGS = $(python_LDFLAGS)
LDLIBS = -lm -lpthread

OBJS = esl.o esl_buffer.o esl_config.o esl_event.o esl_json.o esl_threadmutex.o

all: fs_cli _ESL.so
fs_cli: $(OBJS) fs_cli.o
_ESL.so: $(OBJS) esl_wrap.o esl_oop.o
	$(CXX) -shared esl_wrap.o esl_oop.o $(OBJS) $(LDLIBS) $(LDFLAGS) -o _ESL.so

esl_wrap.cpp: ESL.i
	swig -module ESL -classic -python -c++ -DMULTIPLICITY -threads -I. -o esl_wrap.cpp ESL.i

install: _ESL.so
	install -m 755 _ESL.so $(SITE_DIR)
	install -m 755 ESL.py $(SITE_DIR)

swigclean:
	rm -f esl_wrap.* ESL.so ESL.py

reswig:	swigclean esl_wrap.cpp

clean:
	rm -f fs_cli *.o *.so

.PHONY: install clean swigclean reswig
