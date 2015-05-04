use strict;
use warnings;

use HTML::TreeBuilder;
use LWP::Simple;
use Data::Dumper;
use Try::Tiny;
use Getopt::Long;

use lib 'lib/perl/';
use FourChanDownloader;

my $fcd = FourChanDownloader->new();
$fcd->DownloadThreadImages($ARGV[0]);
