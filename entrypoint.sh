#!/bin/sh
if [ -z "$(ls -A /code)" ]; then
  echo "nothing found in /code - did you forget to mount the source code there?"
  exit 1
fi
if [ -f /code/requirements.txt ]; then
  echo "requirements.txt detected, installing from pip"
  pip install -r /code/requirements.txt
else
  echo "no /code/requirements.txt detected, not doing pip install"
fi
pyright /code
