function noImplicitReturns(a): boolean {
  if (a > 0) {
    return false;
  }
}

noImplicitReturns(0);

console.log('ok');
