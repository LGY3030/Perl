sub test1{
	$a=shift;
	print("$a\n");
	$b=shift;
	print("$b\n");
	$c=shift;
	print("$c\n");
}
&test1(2,4,6);

sub test2{
	($a,$b,$c)=@_;
	print("$a\n");
	print("$b\n");
	print("$c\n");
}
&test2(10,24,32);

sub test3{
	if(@_==0) {return 0;} #把@當成純量時就是項目的個數
	$sum=0;
	foreach $_ (@_){
		$sum+=$_;
	}
	return $sum/@_; #把@當成純量時就是項目的個數
}
$get=&test3(1,5,9,2,4);
print("$get\n");

sub test4{
	print("@_\n");
}
@a=(1,3,4);
&test4(@a);

#無論傳入幾個變數或陣列，都會被合併成一個一維陣列@_
sub test5{
	print("@_\n"); #1 3 4 2 2 2
}
@a=(1,3,4);
@b=(2,2,2);
&test5(@a,@b);

#用shift一次只能取一個項目，不是一個引數
sub test6{
	@p=shift;
	@q=shift;
	print("@p\n"); #1
	print("@q\n"); #3
}
@a=(1,3,4);
@b=(2,2,2);
&test6(@a,@b);

#使用@_取得傳入的引數，陣列要放最後一個，因為剩下的引數全會被陣列收走，所以傳入的引數有陣列的話，要放在最後一個引數。
sub  test7{
	($a,$b,@c)=@_;
	print("$a\n"); #abc
	print("$b\n"); #987
	print("@c\n"); #1 2 3 444
}
$temp1="abc";
$temp2=987;
@temp3=(1,2,3);
$temp4=444;
&test7($temp1,$temp2,@temp3,$temp4);


#可用require "xxxxx.pl"; 來呼叫其他函式