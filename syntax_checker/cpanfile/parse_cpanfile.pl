#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use Module::CPANfile;

my $file = $ARGV[0];
eval { Module::CPANfile->load($file) };

$@ or exit(0);
my $res = $@;

my $type = 'E';    # <= Means Error
my ( $file_name, $line, $err_msg ) =
  $res =~ /failed: syntax error at (.*?) line (\d*?), (.*)/;
$err_msg = 'syntax error: ' . $err_msg;

print "$type;$file_name;$line;$err_msg";
