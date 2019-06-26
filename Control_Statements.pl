# Conditional Control Statements
# Do not have Boolean data type --- 0 是false、非0 是ture
print("\nConditional Control Statements:\n");
my $name="friend";
my $x=100;
print ("HELLO!\n") if ($name eq "friend");
$x-=10 if ($x == 100);
print("$x");
print("\n");

my $if1=80;
if($if1>=90){
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
unless($if2==10){
	print("ok");
}
print("\n\n");

# Loop Control Statements
print("Conditional Control Statements:\n");