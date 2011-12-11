#!/usr/bin/perl

use strict;
use warnings;
use utf8;
use Sys::Load qw/getload uptime/;
use tw_lib;

my $ld = sprintf('現在のload averageは%.2f,%.2f,%.2fです。',(getload())[0],(getload())[1],(getload())[2]);
my $tm = sprintf('起動から%d秒経過しました。',uptime());

# 投稿
tw_lib::up("$ld ／ $tm");

