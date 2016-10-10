# -*- perl -*-
# usage: perl -w wrap.pl templates/default/php-7.0.10-Win32-VC14-php.ini-production.erb

use warnings;
use Scalar::Util qw(looks_like_number);

 LINE: while(<>)
{
    if(/<%/){
        next LINE;
    }

    if(/^; /){
        next LINE;
    }

    if(/^(;?((.)(.*?))=(.*))/){
        $line=$1;
        $var=$2;
        $val=$5;

        $var =~ s/^ *//;
        $var =~ s/ +$//;
        $val =~ s/^ *//;
        $val =~ s/ +$//;

        $isnum=0;
        if (looks_like_number($val)) {
	$isnum=1;
        }

        $val_has_quotes=0;
        if($val =~ /^".*"$/){
	$val_has_quotes=1;
        }

        if(/^;extension=/){
	print "<% if !node['php']['$val']['enabled'] %>;<% end %>extension=$val";
	print "\n";
	print "default['php']['$val']['enabled'] = false";
	next LINE;
        }
        if(/^;/){

	if($val eq ''){

	    print "<% if !node['php']['$var']";
	    print ".to_s.empty?";

	}else{

	    print "<% if node['php']['$var']";

	    print " != ";
	    if($isnum){print "$val"}else{print "'$val'"};
	}
	print " %>";

	print "$var";
	print " = ";

	if($val_has_quotes){
	    print "\"";
	}


	print "<%= ";
	print "node['php']['$var']";
	print " %>";

	if($val_has_quotes){
	    print "\"";
	}

	print "<% else %>";

	print "$line";

	print "<% end %>";

	print "\n";
	print "default['php']['$var'] = ";
	if($isnum){
	    print "$val"
	}else{
	    if($val_has_quotes){
	        print "$val";
	    }else{
	        print "'$val'";
	    }
	};
	print "\n";
	print "\n";
        }
        else{

	$isnum=0;
	if (looks_like_number($val)) {
	    $isnum=1;
	}

	print "$var";
	print " = ";

	if($val_has_quotes){
	    print "\"";
	}

	print "<%= ";
	print "node['php']['$var']";
	print " %>";

	if($val_has_quotes){
	    print "\"";
	}

	print "\n";

	print "default['php']['$var']";
	print " = ";
	if($isnum){
	    print "$val"
	}else{

	    if($val_has_quotes){
	        print "$val";
	    }else{
	        print "'$val'";
	    }
	};
	print "\n";
	print "\n";
        }
    }
}
