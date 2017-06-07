use strict;
use warnings;

my $fizz = "Fizz";
my $buzz = "Buzz";
my $fizzBuzz = "FizzBuzz";

for (my $i = 1; $i <= 30; $i++) {
  if ($i % 15 == 0) {
    print "$fizzBuzz\n";
  } elsif ($i % 5 == 0) {
    print "$buzz\n";
  } elsif ($i % 3 == 0) {
    print "$fizz\n";
  } else {
    print "$i\n";
  }
}
