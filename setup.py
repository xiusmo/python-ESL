from setuptools import setup, Extension


setup(name='ESL',
      version='1.5.14',
      author='FreeSWITCH Developers',
      description='FreeSWITCH ESL module',
      ext_modules=[
          Extension('_ESL',
                    sources=['esl.c',
                             'esl_buffer.c',
                             'esl_config.c',
                             'esl_event.c',
                             'esl_json.c',
                             'esl_threadmutex.c',
                             'esl_oop.cpp',
                             'ESL.i'],
                    swig_opts=['-classic', '-c++', '-DMULTIPLICITY',
                               '-threads', '-I.'],
                    extra_compile_args=['-I.'])
      ],
      py_modules=["ESL"])
