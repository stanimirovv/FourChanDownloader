use strict;
use warnings;

use Getopt::Long;

use lib 'lib/perl/';
use FourChanDownloader;

#TODO add command line options

my $fcd = FourChanDownloader->new();
$fcd->DownloadThreadImages($ARGV[0]);
