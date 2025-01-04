function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This function will cause a stack overflow error if the input is a large number.  This is because the recursive calls to foo() will continue until the stack is full.

The problem is that the recursion doesn't have a base case to stop at in case of negative input. This needs to be handled appropriately to avoid stack overflow errors.  Additionally, extremely large positive inputs can also cause stack overflows.