#!/usr/bin/env perl
use strict;
use warnings;
use DateTime;
#use DateTime::Format::ISO8601;

while(<>){
  if(/(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2})\+09:00 (.+)/){
    #my $dt = DateTime::Format::ISO8601->parse_datetime($1);
    my $dt = DateTime->new(
      year       => $1,
      month      => $2,
      day        => $3,
      hour       => $4,
      minute     => $5,
      second     => $6,
      #time_zone  => 'Asia/Tokyo',
    );
    my $out = $dt->strftime("%b %d %H:%M:%S");
    print "$out $7\n";
  }
}
