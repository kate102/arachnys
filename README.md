# arachnys Tech Test

## Introduction
I was set this tech test yesterday, 9 May 2019, the brief was: <br />
Given an integer, create a [Pascals Triangle](https://en.wikipedia.org/wiki/Pascal%27s_triangle) with that number of rows.

## My Solution
I decided to create the triangle row by row until it was the right size.  <br />
I decided to unpack the triangle into a string row by row until it was empty.

## Testing & Code Quality
I used `rspec` to run the tests, (type `rspec` to run the tests) <br />
I used `rubocop` to lint the code, (type `rubocop` to run the linter) <br />
 *Note that the linter has 3 outstanding errors but they break the tests*
 
## Outstanding
1. I feel that there is a bit of repetition I could probably address
2. The method `make_next_row` is a bit long
3. I only supply the result as a string
