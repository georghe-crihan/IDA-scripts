#!/usr/bin/env perl

use Compress::Raw::Zlib;
my $decompressor = new Compress::Raw::Zlib::Inflate();
my $output;
undef $/;
$decompressor->inflate(<>, $output);
print $output;