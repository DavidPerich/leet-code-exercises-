// Compute x^n - where x is any real number and n is an integer

// - x^0 will always be 1 no matter what x is. That is our **base case**
// - Base case is - when n = 0 and x^0 = 1
// - If `n` is positive and *even* - recursively compute `y = x ^n/2^` and then x^n = y * y
// - if `n` is positive and odd - recursively compute `x ^n-1 * x`` so that the exponent is either 0 or positive and even - then `x**n = (x** n-1) * x`
// - if `n` is negative then - recursively compute x^-n^ so that exponent becomes positive then `x^n^ = 1 / (x ^ -n`)

var isEven = function(n) {
  return n % 2 === 0;
};

var isOdd = function(n) {
  return !isEven(n);
};

var power = function(x, n) {
  println("Computing " + x + " raised to power " + n + ".");
  if (n === 0 ) {return 1;} // base case

  if (n < 0) {
    return 1 / power(x, -n)
  }
  // recursive case: n is negative

  if (isEven(n)) {
    let y = power(x, n/2)
    return y * y
  } // recursive case: n is even


  if (isOdd(n)) {
    return x * (x ** (n - 1 ));
  }// recursive case: n is odd
};

var displayPower = function(x, n) {
  println(x + " to the " + n + " is " + power(x, n));
};

//displayPower(3, 0);
//Program.assertEqual(power(3, 0), 1);
//displayPower(3, 1);
//Program.assertEqual(power(3, 1), 3);
//displayPower(3, 2);
//Program.assertEqual(power(3, 2), 9);
//displayPower(3, -1);
//Program.assertEqual(power(3, -1), 1/3);