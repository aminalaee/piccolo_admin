#!/bin/bash
# To run all in a folder tests/
# To run all in a file tests/test_foo.py
# To run all in a class tests/test_foo.py::TestFoo
# To run a single test tests/test_foo.py::TestFoo::test_foo

cd ..

export PICCOLO_CONF="tests.piccolo_conf"
rm piccolo_api_test.sqlite 2> /dev/null
python -m pytest -s $@
