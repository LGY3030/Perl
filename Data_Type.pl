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

my @array = (1..10);
print("@array\n");

my @aarray=([1,2,3,4],[5,5]); # 2D array
print "$aarray[0][1]\n";

my @test=(1,2,3,4);
my @test2=(5,5);
my @aaarray=(\@test,\@test2); # 2D array
print "$aaarray[1][1]\n";

# Hash Array
print "Hash Array:\n";
my %hash_a;
%hash_a=("a","aa","b","bb","c","cc");
print("$hash_a{'a'}\n");

my %hash_b=("a"=>"aa","b"=>"bb","c"=>"cc");
print("$hash_b{'b'}\n");

my %hash_c;
$hash_c{'aa'}='a';
$hash_c{'bb'}='b';
$hash_c{'cc'}='c';
print("$hash_c{'cc'}\n\n");

foreach $key (keys %hash_c){
	print("$key -> $hash_c{$key}\n");
}
print("\n");
foreach $value (values %hash_c){
	print("$value\n");
}

while(($key,$value)=each %hash_c){
	print("$key\n");
}
print("\n");


# References(Pointer)
print "References(Pointer):\n";
my $scalarVar="a";
my @arrayVar=qw(1 2 3);
my %hashVar=("a"=>"aaa");
$scalarRef = \$scalarVar; #取得位址
$arrayRef = \@arrayVar; #取得位址
$hashRef = \%hashVar; #取得位址
# $functionRef = \&functionName; #取得位址

print("$scalarRef -> $$scalarRef\n"); #取值
print("$arrayRef -> @$arrayRef\n"); #取值
print("$hashRef -> $hashRef->{'a'}\n"); #取值
# print("$functionRef -> &$functionRef\n"); #取值
print("\n");

my $arrayRef=[[1,2,3,4],[5,5]]; #Anonymous Array References
print "$arrayRef->[0][2]\n"; #取值
