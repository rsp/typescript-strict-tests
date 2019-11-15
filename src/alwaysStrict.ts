function f() {
  return arguments.callee;
}

f();

console.log('ok');
