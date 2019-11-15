#!/bin/bash

echo "Should give all error under --strict:"

strict="noImplicitAny noImplicitThis alwaysStrict strictBindCallApply \
strictNullChecks strictFunctionTypes strictPropertyInitialization"

flags=""

for i in $strict; do

  deno run src/$i.ts >/dev/null 2>&1 && ds=OK || ds=ERROR

  echo -e "$ds\t\t($i)"

  [ "$ds" = ERROR ] && flags="$flags $i"

done

echo "Supported by Deno:   $flags"
echo "Included by --strict: noImplicitAny noImplicitThis alwaysStrict strictBindCallApply \
strictNullChecks strictFunctionTypes strictPropertyInitialization"
echo $(deno -v)

[ "$(echo $strict)" = "$(echo $flags)" ] && {
  echo All --strict flags supported by Deno - OK
  exit 0
} || {
  echo Not all --strict flags supported by Deno - FAIL
  exit 1
}
