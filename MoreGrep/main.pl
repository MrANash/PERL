use strict;
use warnings;

$|=1;

sub main{
	#here we could let the user parse their own file
	#all we would do is set the variable to <STDIN>
	#but just for the sake of this program, we have left it
	#just so we can learn about how to read files.
	my $file = 'C:\Users\Adam\Desktop\PERL\hi.txt';
	##Ternary Operator made easier to read
	open(INPUT, $file) ?
	open(INPUT, $file) :
	die "input file ${file} was not found or recognized\n"; 
	## End Ternary Operator
	print "what would you like to search for?
use . as a wild card\n";
	my $parse = <STDIN>;
	my $output = "output2.txt";
	open OUTPUT, '>'.$output or die "Cannot create ${output}\n";
	
	chomp($parse);
	my $upperParse = uc $parse;
	
	my $count = 1;
	
	while(my $line = <INPUT>){
		if ($line =~ $parse) {
		print "Match! Line containing $1 printed to output, Match #" . $count . "\n";
		print OUTPUT;
		$count += 1;
		}
	}


	
	

	
	close INPUT;
	close OUTPUT;
}

main();