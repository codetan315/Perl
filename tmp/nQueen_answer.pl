use Time::HiRes;
my $start_time = Time::HiRes::time;

my $n = $ARGV[0] // 8;

my %board;
my $res_count = 0;

# ��z���board��������
for my $i (1..$n){
    for my $j(1..$n){
        $board{$i}{$j} = 0;
    }
}

# �N�C�[����u���|�W�V����
$row_pos = 1;
$col_pos = 1;

# �����J�E���g
my $proc_ct = 0;
while(1){
    $proc_ct++;
    # �u�����Ƃ��Ă���|�W�V���������܂��Ă���ΉE�ֈړ����Ď���
    # �u�����Ƃ��Ă���|�W�V������8�𒴂��Ă���΂���ɖ߂�
    if( ! defined($board{$row_pos}{$col_pos}) || $board{$row_pos}{$col_pos} != 0){
        # ����$col_pos��8�ł���΁A1��O�ɖ߂��čĊJ
        if($col_pos >= $n){
            # 1��O�̃|�W�V�������擾
            $row_pos--;
            if($row_pos == 0){
                print "\n fnish process. result:$res_count / proc_count:".$proc_ct ."\n";
                last;
            }
            for my $i (1..$n){
                if($board{$row_pos}{$i} == $row_pos){
                    $col_pos = $i;
                    $board{$row_pos}{$i} = 0;
                }
            }

            # ��߂����|�W�V�����̃N�C�[������菜��
            my $ct_tmp = 1;
            for my $row_tmp($row_pos+1..$n){
                if($col_pos+$ct_tmp<=$n && $board{$row_tmp}{$col_pos+$ct_tmp} == (-1) * $row_pos){
                    $board{$row_tmp}{$col_pos+$ct_tmp} = 0;
                }
                if($col_pos-$ct_tmp>=1 && $board{$row_tmp}{$col_pos-$ct_tmp} == (-1) * $row_pos){
                    $board{$row_tmp}{$col_pos-$ct_tmp} = 0;
                }
                if($board{$row_tmp}{$col_pos} == (-1) * $row_pos){
                    $board{$row_tmp}{$col_pos} = 0;
                }
                $ct_tmp++;
            }
        }
        $col_pos++;
        next;
    }

    $board{$row_pos}{$col_pos} = $row_pos;

    my $ct = 1;
    for my $row_tmp ($row_pos+1..$n){
        if($col_pos+$ct<=$n && $board{$row_tmp}{$col_pos+$ct} == 0){
            $board{$row_tmp}{$col_pos+$ct} = (-1) * $row_pos;
        }
        if($col_pos-$ct>=1 && $board{$row_tmp}{$col_pos-$ct} == 0){
            $board{$row_tmp}{$col_pos-$ct} = (-1) * $row_pos;
        }
        if($board{$row_tmp}{$col_pos} == 0){
            $board{$row_tmp}{$col_pos} = (-1) * $row_pos;
        }
        $ct++;
    }
    # �ŏI�s�܂œ��B������`��
    if($row_pos == $n){
        # board�̏�Ԃ��o��
        print "\n result: " . $res_count++ . "\n   ";
        for (1..$n){ print "$_ " }
        print "\n  ";
        for (1..$n){ print "--" }
        for my $i (1..$n){
            print "\n".$i."| ";
            for my $j (1..$n){
                print $board{$i}{$j} > 0 ? "Q " : "- ";
            }
        }
    }
    # ���̍s��
    $row_pos++;
    $col_pos = 1;
}

printf("%0.3f",Time::HiRes::time - $start_time);

1;
