#!/bin/sh

RESULT="$(curl ${HEALTH_CHECK_ENDPOINT})"
echo "Result: ${RESULT}"
if [ ${RESULT} = "world" ]; then
  exit 0
fi

exit 1
