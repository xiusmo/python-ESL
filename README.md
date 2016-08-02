# python-ESL
[![version](https://img.shields.io/pypi/v/python-ESL.svg)](https://pypi.python.org/pypi/python-ESL/1.4.18)
![downloads](https://img.shields.io/pypi/d/python-ESL.svg)

This is FreeSWITCH's [Python ESL SWIG wrapper](https://freeswitch.org/confluence/display/FREESWITCH/Python+ESL)
pulled directly out of tree on version `1.4.18` with no modifications.

All we've done is replaced the `Makefile` with `setuptools` to make the package
easy to install with pip:

    pip install python-ESL

It should work on both python 2 and 3.

## Alternative Projects
This packaging is duplicate of a couple of other projects, namely,
- [freeswitch-esl-python](https://github.com/gurteshwar/freeswitch-esl-python)
- And a later [rework by victor-torres](https://github.com/victor-torres/freeswitch-esl-python)

The first is not hosted on `pypi` and requires git while the second [is](https://pypi.python.org/pypi/FreeSWITCH-ESL-Python/1.2)
but does not leverage the built in SWIG support of `distutils` nor
does it document the version of FreeSWITCH from which it was derived.
In our opinion neither is well suited for long term maintenance.

If you seek a **pure Python** alternative checkout
[greenswitch](https://github.com/EvoluxBR/greenswitch).
