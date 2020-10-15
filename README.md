# Pyright Docker Image

[![Docker](https://github.com/dafnifacility/pyright-docker/workflows/Docker/badge.svg)](https://github.com/orgs/dafnifacility/packages?repo_name=pyright-docker)

This is a Docker image containing [Pyright](https://github.com/Microsoft/pyright) -
intended to be used for running PyRight under CI to check type problems.

PyRight checks your Python type assertions and looks for problems.

## Usage

Run the Docker image, with your source code mounted inside the Docker image at /code

Since PyRight requires your dependencies to be able to fully check type annotations,
the default `entrypoint.sh` script for this repository will automatically install Pip
requirements from the `requirements.txt` in your code directory.

## Image Variants

There's two versions of this image:

- the "regular" image ("pyright") which includes Pyright, Python3, Pip and all the tools
  necessary for installing Python _and C-based_ extensions. This may be required if your
  application uses any dependencies which require a compilers
- the "slim" image that includes PyRight, Python3, Pip and no compiler. This image is
  smaller, and is suitable for applications which don't require a compiler.
