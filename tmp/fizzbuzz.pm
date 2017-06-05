package fizzbuzz;

use strict;
use warnings;
use utf8;
binmode STDIN, ':encoding(cp932)';
binmode STDOUT, ':encoding(cp932)';
binmode STDERR, ':encoding(cp932)';

sub fizzbuzz {
  my $fizz = "Fizz";
  my $buzz = "Buzz";
  my $fizzBuzz = "FizzBuzz";
  if ($ARGV[0] !~ /^[+-]?[0-9]+$/) {
    print "引数は半角整数で入力してください。\r\n";
    return;
  }
  for (my $i = 1; $i <= $ARGV[0]; $i++) {
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
  return;
}

fizzbuzz($ARGV[0]);

1;
