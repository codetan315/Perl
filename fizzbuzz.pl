use strict;
use warnings;

my $fizz = "Fizz";
my $buzz = "Buzz";
my $fizzBuzz = "FizzBuzz";

for (my $i = 1; $i <= 30; $i++) {
  if ($i % 15 == 0) {
    print "$fizzBuzz\r\n";
  } elsif ($i % 5 == 0) {
    print "$buzz\r\n";
  } elsif ($i % 3 == 0) {
    print "$fizz\r\n";
  } else {
    print "$i\r\n";
  }
}
