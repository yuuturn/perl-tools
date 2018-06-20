#!/usr/bin/env perl
use strict;
use warnings;
use DateTime::Format::ISO8601;

while(<>){
  if(/(\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\+09:00) (.+)/){
    my $dt = DateTime::Format::ISO8601->parse_datetime($1);
    my $out = $dt->strftime("%b %d %H:%M:%S");
    print "$out $2\n";
  }
}
