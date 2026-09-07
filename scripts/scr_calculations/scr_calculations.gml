/**
*@function Converts a number into it's negative counterpart and returns it
*@param n The number to make negative
*/
function make_negative(n){
	return n * -1;
}

/**
 * @func Returns the probability chance of getting r successes in n trials
 * @param {real} n Number of total trials
 * @param {real} r Number of successful trials
 * @param {real} p Probability of success
 * @returns {real} Returns Probability of getting r successes
 */
function binomial_probability(n, r, p){
	return combination(n, r) * power(p, r) * power(1 - p, n - r);
}

/**
 * @func Returns a number of unique subsets created from all combinations of a number of elements. Returns -1 on error
 * @param {real} n Number of elements
 * @param {real} r Size of the subset of elements
 * @returns {real} Number of combinations
 */
function combination(n, r){
	if (n - r < 0) return -1
	return factorial(n) / (factorial(r) * (factorial(n - r)));
}

/**
 * @func Returns the factorial of a given number. Do not use this for numbers over 18 because then GameMaker will get... funky (in a bad way)
 * @param {real} number Non-negative number to take the factorial of
 * @returns {real} Factorial of the given number
 */
function factorial(number){
	if (number <= 1) return 1;
    return number * factorial(number - 1);
}
