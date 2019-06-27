# Regular Expressions
# =~ 和 !~ => match 和 not match
# Syntax: $string =~ /regular expression/expression modifier

if ("Hello World"=~/Hello/){
	print("Yes\n");
}

$test="hello world";
$test =~ tr/a-z/A-Z/;
print("$test\n");

# /abc/ 找到含有abc的字串
# /^abc/ 找到開頭是abc的字串
# /abc$/ 找到結尾是abc的字串
# /a|b/ 找到有a或b的字串，也可以用來找整個字(word)
# /ab{2,4}c/ 找到a後面跟著2-4個b，再跟著c的字串，若只有/ab{2,}c/則會找二個以上的b
# /ab*c/ 找到a後面跟著0個或多個b，再跟著c的字串，如同/ab{0,}c/
# /ab+c/ 找到a後面跟著一個以上的b，再跟著c的字串，如同/ab{1,}c/
# /a.c/ .可以代表任何字元，除了new line字元(\n)外。
# /[abc]/ 找到含有這三個字元中任何一個的字串
# /\d/ 找到含有數字的字串，如同/[0-9]/
# /\w/ 找到含有字母的字串，如同/[a-zA-Z0-9_]/
# /\s/ 找到含有white space的字串，如同/[ \t\r\n\f]/
# /[^abc]/ 找到沒有abc任一字元的字串
# /\*/ 找到含有字元*的字串，在反斜線"\"後面的字元Perl會把它當作普通字元看待。若你不確定這個符號是否為特殊字元，乾脆全加上\以策安全。
# /abc/i 忽略abc的大小寫
# /(\d+)\.(\d+)\.(\d+)\.(\d+)/ 找到類似IP的字串，並將IP的四個數字分別存在$1,$2,$3,$4四個特殊變數中，以便在其後加以利用。例：if ($x =~ /(\d+\.\d+)\.\d+\.\d+/) { print "海洋大學" if ($1 eq "140.121"); }
# m//gimosx m命令可以自訂pattern的分隔符號，而gimosx則是它的修飾選項
	# $url="my.machine.tw:8080/cgi-bin/test.pl";
	# ($host, $port, $file)=($url=~m|http://([^/:]+):{0,1}(\d*)(\S*)$|);
	# $url=~m|| m後面跟著的就是分隔符號，| |裡面的就是pattern。
	# ([^/:]+) match一個字串，裡面沒有/和:字元。找到的字串存在$1中。
	# :{0,1}(\d*) match 0或1個:，後面跟著一串數字或nothing。找到的字串存在$2中，若找不到，$2就是空的。
	# (\S*)$ match一串非空白字元，並以找到的字串為結尾。找到的字串存在$3中。
	# $host="my.machine.tw", $port=8080, $file="/cgi-bin/test.pl"
# s/PATTERN/REPLACEMENT/egimox 這是取代的命令。它會尋找符合PATTERN的字串，並取代成REPLACEMENT字串
	# $x =~ s/\s+//g 把所有的white space全部去除掉
	# $x =~ s/([^ ]*):*([^ ]*)/$2:$1/ 把用":"分開的兩個欄位互相對調
	# $path =~ s|/usr/bin|/usr/local/bin| 也可以自訂分隔符號
# tr/SEARCHLIST/REPLACEMENTLIST/cds 這是也是取代的命令，和上一個不同的是SEARCHLIST和REPLACEMENTLIST只能是普通字串，而不是Regular Expression，所以速度比較快。它的修飾選項也比較少
	# $x =~ tr/this/that/ 把"this"替換成"that"
	# $x =~ tr/a-z/A-Z/ 把小寫字母全部替換成大寫字母
	# $count = $x =~ tr/*/*/ 計算$x中有幾個"*"