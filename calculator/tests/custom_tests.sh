#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

# Custom Test 01: Ensure program errors with an invalid (duplicated) operator
if $CALCULATOR 2 ** 0; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (2 ** 0) apparently succeeded?!'
  exit 1
fi

# Custom Test 02: Ensure program succeeds when handling negative number inputs
if ! $CALCULATOR -2 + 1; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! A valid run of the calculator (-2 + 1) failed!'
  exit 1
fi