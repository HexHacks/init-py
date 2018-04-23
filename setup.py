#!/bin/python3
from setuptools import setup, find_packages


with open('README.rst') as f:
    readme = f.read()

with open('LICENSE') as f:
    license = f.read()

setup(
    name='sample',
    version='0.1.0',
    description='description',
    long_description=readme,
    author='Jacob Peyron',
    author_email='jacob.peyron@gmail.com',
    url='https://github.com/HexHacks/init-py',
    license=license,
    packages=find_packages(exclude=('tests', 'docs'))
)

