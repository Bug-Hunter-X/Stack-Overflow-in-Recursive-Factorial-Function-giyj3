function foo(x: int): int {
  if (x < 0) {
    return 0; // Handle negative input
  } else if (x == 0) {
    return 1;
  } else {
    var result: int = 1;
    var i: int = 1;
    while (i <= x) {
      result = result * i;
      i = i + 1;
    }
    return result;
  }
}

function main(): void {
  echo foo(5);
  echo foo(-5); //test with negative input
  echo foo(1000); //test with a large input
}

This improved version handles negative inputs gracefully by returning 0 and uses an iterative approach to prevent stack overflow. The iterative approach is significantly more efficient and robust for large inputs.