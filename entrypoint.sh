#!/bin/sh
if [ -f requirements.txt ]; then
  echo "requirements.txt detected, installing from pip"
  pip install --user -r requirements.txt
else
  echo "no requirements.txt detected, not doing pip install"
fi
pyright
