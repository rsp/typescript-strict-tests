type F = (a: number | string) => number;

const strictFunctionTypes: F = (x: number) => 1;

strictFunctionTypes(1);

console.log('ok');
