function f(a: number): number {
  return a;
}

let a = f.apply(undefined, ['x']);  
