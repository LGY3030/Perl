# Scalar --- 字元、字串、整數、浮點數
print "Scalar:\n";
my $x="abc"; #字串
my $y='a'; #字元
my $z=5; #整數
my $w=5.5; #浮點數
print "$x, $y, $z, $w";
print "\n\n";

# Scalar Array
print "Scalar Array:\n";
my @a=qw("a" "b" 5 5.5); #自動逗號
print "@a","\n";
print "$a[0], $a[2]";
print "\n\n";

my @b=("a", "b", 5, 5.5);
print "@b","\n";
print "$b[1], $b[3]";
print "\n\n";

print("$#b\n\n"); #array最後的index

for($i=0;$i<=$#b;$i++){ #for迴圈 印出所有array
	print("$b[$i]\n\n");
}

# Hash Array
print "Hash Array:\n";
