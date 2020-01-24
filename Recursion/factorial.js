// Finish the provided factorial function, so that it returns the value n!. Your code should use a for loop to compute the product 1 * 2 * 3 * ... * n. If you write the code carefully, you won't need a special case for when n equals 0.

// Once implemented, uncomment the Program.assertEqual() statements at the bottom to verify that the test assertions pass.

var iterativeFactorial = function(n) {
  result = 1

for (let i = 1; i <= n;  i += 1 ) {
  result *= i
}

  return result;
};


//Program.assertEqual(iterativeFactorial(5), 120);
//Program.assertEqual(iterativeFactorial(0), 1);

const recursiveFactorial = (n) => {
  if (n === 0) return 1;

  return n * recursiveFactorial(n - 1)
}

console.log(recursiveFactorial(5))
console.log(recursiveFactorial(8))


