# Conditional Control Statements
# Do not have Boolean data type --- 0 是false、非0 是ture
print("\nConditional Control Statements:\n");
my $name="friend";
my $x=100;
print ("HELLO!\n") if ($name eq "friend"); #倒裝
$x-=10 if ($x == 100); #倒裝
print("$x");
print("\n");

my $if1=80; 
if($if1>=90){ # if-elsif-else
	print("A");
}
elsif($if1>=80){
	print("B");
}
elsif($if1>=70){
	print("C");
}
elsif($if1>=60){
	print("D");
}
else{
	print("Fail");
}
print("\n");

my $if2=20;
unless($if2==10){ # unless == if not
	print("ok");
}
print("\n\n");

# Loop Control Statements
print("Conditional Control Statements:\n");

for($i=0;$i<=10;$i++){ # for loop
	print("$i ");
}
print("\n");

my @forarray=(1,2,3,4,5,6);
for($i=0;$i<=$#forarray;$i++){ #印出array
	print("$forarray[$i] ");
}
print("\n");
foreach $i (@forarray){ #印出array
	print("$i ");
}
print("\n");

for $i (1..10){ # 等於for loop
	print("$i ");
}
print("\n");

foreach $i (1..10){ # 等於for loop
	print("$i ");
}
print("\n");

my $whilei=10;
while($whilei>=0){ #while
	print("$whilei ");
	$whilei--;
}
print("\n");

$whilei=10;
do{	#do-while
	print("$whilei ");
	$whilei--;
}while($whilei>=0);
print("\n");

# break & continue == last & next
while(chomp($i=<STDIN>)) {
	next if ($i == 5);
	last unless ($i > 10);
}

while(chomp($i=<STDIN>)) {
	if ($i == 5){
		next;
	}
	if($i==2){
		last;
	}
}