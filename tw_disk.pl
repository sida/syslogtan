#!/usr/bin/perl

use utf8;
use strict;
use warnings;
use Data::Dumper;
use Sys::Statistics::Linux::DiskUsage;
use tw_lib;

my $LIMIT_PERCENT = 85;
my $lxs  = new Sys::Statistics::Linux::DiskUsage;
my $stat = $lxs->get;

foreach my $dev(keys %$stat){
  my $mp = $stat->{$dev}->{mountpoint};
  my $per = $stat->{$dev}->{usageper};
  if ($per > $LIMIT_PERCENT){
    my $out = sprintf("ディスク使用量が%d%%を超えました:%s %d%%\n",$LIMIT_PERCENT,$mp,$per);
    tw_lib::up($out);
  }
}

