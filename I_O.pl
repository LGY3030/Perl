# I/O和檔案處理
# Syntax: 
	# open(FILEHANDLE,"Expression");
	# close(FILEHANDLE);
# open(FH, "<filename") Opens filename for reading.
# open(FH, "+<filename") Opens filename for both reading and writing.
# open(FH, ">filename") Opens filename for writing.
# open(FH, "+>filename") Opens filename for both reading and writing.
# open(FH, ">>filename") Appends to filename.
# open(FH, "command|") Runs the command and pipes its output to the filehandle.
# open(FH, "command|") Pipes the output along the filehandle to the command.
# open(FH, "-") Opens STDIN.
# open(FH, ">-") Opens STDOUT.
# open(FH, "<&=N") Where N is a number, this performs the equivalent of C's fdopen for reading.
# open(FH, ">&=N") Where N is a number, this performs the equivalent of C's fdopen for writing.
my $filename="I_O.txt";
open(my $fd1,$filename) or die " Can not open '$filename' $!\n"; # $! is set when a system call fails
while(my $row=<$fd1>){
	chomp($row);
	print("$row\n");
}
close($fd1);

open(my $fd2,$filename) or die " Can not open '$filename' ";
while(<$fd2>){ # $_ -> the default variable
	chomp;
	print;
	print("\n");
}
close($fd2);


open(my $fd3,'>',$filename) or die " Can not open '$filename' ";
while($input=<STDIN>){
	chomp($input);
	if($input eq "ok"){
		print("file close\n");
		last;
	}
	print $fd3 ("$input\n"); # 輸出到檔案的方法 print FILE "print $x to a file.";
}
close($fd3);

# . 是字串加法的運算子
print ("Scalar value is xxx\n");
print ("Scalar value "."is "."xxx\n");


print <<'    END';
    This is text.
    END
	
	
$x="ls -l";
print "$x";             # Output ls -l
print "\$x";            # Output $x
print '$x';             # Output $x
print `$x`;             # Output files in this directory