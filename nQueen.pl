use strict;
use warnings;

# すでにあるクイーンとは違う列に配置しなければならない、かつ斜めに並んでもダメ
# 横方向x 縦方向y もし |x| != |y| にクイーンがなければ ならクイーンを配置する

  # print "|_|Q|_|_|_|_|_|_|\r\n";
  # print "|_|_|_|_|_|_|_|Q|\r\n";
  # print "|_|_|_|_|Q|_|_|_|\r\n";
  # print "|_|_|_|_|_|_|_|Q|\r\n";
  # print "|_|_|Q|_|_|_|_|_|\r\n";
  # print "|Q|_|_|_|_|_|_|_|\r\n";
  # print "|_|_|_|Q|_|_|_|_|\r\n";
  # print "|_|_|_|_|_|_|Q|_|\r\n";

# TODO 要素の横、縦、斜めにクイーンが無いかチェックする
sub checkQueen($) {
  my $x = 0;
  for (my $i = 0; $i < 4; $i++) {
    if () {

    }
  }
}

my @board = ([],[]);
$board[2][1] = 0;

for (my $i = 0; $i < 4; $i++) {
  for (my $j = 0; $j < 4; $j++) {
    if (checkQueen($board[$i][$j])) {
      $board[$i][$j] = 1;
    }
  }
}
