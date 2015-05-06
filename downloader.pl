use strict;
use warnings;

use Getopt::Long;

use lib 'lib/perl/';
use FourChanDownloader;

my $options = {};
GetOptions (
            "-t"    => \$$options{timestamp},
            "-d"    => \$$options{directory_create},
            "-rd=s" => \$$options{root_dir},
            "-dn=s" => \$$options{directory_name})  or die("Error in command line arguments\n");

my $fcd = FourChanDownloader->new($options);
$fcd->DownloadThreadImages($ARGV[0]);
