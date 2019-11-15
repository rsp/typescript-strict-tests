function strictNullChecks(x: string | null) {
  return x.toUpperCase();
}

strictNullChecks('a');

console.log('ok');
