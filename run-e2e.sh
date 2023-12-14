#!/bin/sh

RESULT="$(curl ${E2E_TEST_ENDPOINT})"
echo "Result: ${RESULT}"
if [ ${RESULT} = "world" ]; then
  exit 0
fi

exit 1
