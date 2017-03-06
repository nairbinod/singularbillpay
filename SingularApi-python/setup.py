# coding: utf-8

import sys
from setuptools import setup, find_packages

NAME = "singular_api"
VERSION = "1.0.0"



# To install the library, run the following
#
# python setup.py install
#
# prerequisite: setuptools
# http://pypi.python.org/pypi/setuptools

REQUIRES = ["urllib3 >= 1.10", "six >= 1.9", "certifi", "python-dateutil"]

setup(
    name=NAME,
    version=VERSION,
    description="Singular Api",
    author_email="",
    url="",
    keywords=["Swagger", "Singular Api"],
    install_requires=REQUIRES,
    packages=find_packages(),
    include_package_data=True,
    long_description="""\
    DEFAULT
    """
)


