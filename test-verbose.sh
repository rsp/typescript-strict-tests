#!/bin/bash

echo "Should give all errors for supported flags:"

echo -e "TSC loose:\tTSC strict:\tDeno:"

# default with --strict:
strict="noImplicitAny noImplicitThis alwaysStrict strictBindCallApply \
  strictNullChecks strictFunctionTypes strictPropertyInitialization"
# not default with --strict:
other="noFallthroughCasesInSwitch noImplicitReturns noUnusedLocals noUnusedParameters"

flags=""

for i in $strict $other
do

  npx tsc src/$i.ts --outFile build/$i.js >/dev/null 2>&1 && node build/$i.js >/dev/null 2>&1 && tl=OK || tl=ERROR
  npx tsc src/$i.ts --outFile build/$i.js --$i >/dev/null 2>&1 && node build/$i.js >/dev/null 2>&1 && ts=OK || ts=ERROR
  deno run src/$i.ts >/dev/null 2>&1 && ds=OK || ds=ERROR

  echo -e "$tl\t\t$ts\t\t$ds\t\t($i)"

  [ "$ds" = ERROR ] && flags="$flags $i"

done

echo "Supported by Deno:   $flags"
echo "Included by --strict: noImplicitAny noImplicitThis alwaysStrict strictBindCallApply \
strictNullChecks strictFunctionTypes strictPropertyInitialization"
echo TSC $(npx tsc -v) Node $(node -v)
echo $(deno -v)

[ "$(echo $strict $other)" = "$(echo $flags)" ] && {
  echo All --strict+ flags supported by Deno - OK
  exit 0
} || {
  echo Not all --strict+ flags supported by Deno - FAIL
  exit 1
}
