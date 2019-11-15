#!/bin/sh

echo "TSC loose:\tTSC strict:\tDeno:"

for i in noImplicitAny noImplicitThis alwaysStrict strictBindCallApply \
  strictNullChecks strictFunctionTypes strictPropertyInitialization \
  noFallthroughCasesInSwitch noImplicitReturns noUnusedLocals noUnusedParameters # <- not default with --strict
do

  npx tsc src/$i.ts --outFile build/$i.js >/dev/null 2>&1 && node build/$i.js >/dev/null 2>&1 && tl=OK || tl=ERROR
  npx tsc src/$i.ts --outFile build/$i.js --$i >/dev/null 2>&1 && node build/$i.js >/dev/null 2>&1 && ts=OK || ts=ERROR
  deno run src/$i.ts >/dev/null 2>&1 && ds=OK || ds=ERROR

  echo "$tl\t\t$ts\t\t$ds\t\t($i)"

done
