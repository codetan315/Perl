use strict;
use warnings;
use FizzBuzz;

use Test::More tests => 18;

is (FizzBuzz::checkArgv(), "noArgv", "checkArgv as 'noArgv'.");
is (FizzBuzz::checkArgv("abc"), "notPositiveInt", "checkArgv as 'notPositiveInt'.");
is (FizzBuzz::checkArgv("あ"), "notPositiveInt", "checkArgv as 'notPositiveInt'.");
is (FizzBuzz::checkArgv("%"), "notPositiveInt", "checkArgv as 'notPositiveInt'.");
is (FizzBuzz::checkArgv(-1), "notPositiveInt", "checkArgv as 'notPositiveInt'.");
is (FizzBuzz::checkArgv(11), "OK", "checkArgv as 'OK'.");
is (FizzBuzz::fbDivide(), 0, "fbDivide as 0.");
is (FizzBuzz::fbDivide(15), "FizzBuzz", "fbDivide as 'FizzBuzz'.");
is (FizzBuzz::fbDivide(5), "Buzz", "fbDivide as 'Buzz'.");
is (FizzBuzz::fbDivide(3), "Fizz", "fbDivide as 'Fizz'.");
is (FizzBuzz::fbDivide(11), 11, "fbDivide as Integer.");
is (FizzBuzz::fizzbuzz(), 0, "fizzbuzz");
is (FizzBuzz::fizzbuzz(0), 0, "fizzbuzz");
is (FizzBuzz::fizzbuzz(-1), 0, "fizzbuzz");
is (FizzBuzz::fizzbuzz("abc"), 0, "fizzbuzz");
is (FizzBuzz::fizzbuzz("あ"), 0, "fizzbuzz");
is (FizzBuzz::fizzbuzz("%"), 0, "fizzbuzz");
is (FizzBuzz::fizzbuzz(15), 1, "fizzbuzz");
