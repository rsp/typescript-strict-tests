function noFallthroughCasesInSwitch(x) {
  let a;
  switch (x) {
    case 1: a = 1;
    case 2: a = 2; break;
  }
  return a;
}

noFallthroughCasesInSwitch(1);

console.log('ok');
