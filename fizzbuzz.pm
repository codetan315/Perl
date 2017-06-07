package FizzBuzz;

use strict;
use warnings;
use utf8;
binmode STDIN, ':encoding(cp932)';
binmode STDOUT, ':encoding(cp932)';
binmode STDERR, ':encoding(cp932)';

sub fizzbuzz {
  my $n = $_[0];
  # 引数のチェック
  my $result = checkArgv($n);
  if ($result eq "noArgv") {
    print STDERR "引数を入力してください(正の整数)。\n";
    return 0;
  } elsif ($result eq "notPositiveInt") {
    print STDERR "引数には正の整数を入力してください。\n";
    return 0;
  } elsif ($result eq "OK") {
    # 引数で受け取った数だけ出力
    for my $i (1..$n) {
      print fbDivide($i) . "\n";
    }
    return 1;
  }
}

sub checkArgv {
  my $argv = $_[0];
#  my ( $n ) = @_;
  if (!$argv) {
    return "noArgv";
  } elsif ($argv !~ /^[+]?[0-9]+$/) {
    return "notPositiveInt";
  } else {
    return "OK";
  }
}

sub fbDivide {
  my $num = $_[0];
  if (!$num) {
    return "0";
  } elsif ($num % 15 == 0) {
    return "FizzBuzz";
  } elsif ($num % 5 == 0) {
    return "Buzz";
  } elsif ($num % 3 == 0) {
    return "Fizz";
  } else {
    return "$num";
  }
}

1;
