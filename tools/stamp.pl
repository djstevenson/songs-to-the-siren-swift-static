#!/usr/bin/perl -w
use strict;
use warnings;

my $id;
while(<>) {
    if (/id:        (\d+),/) {
        $id = $1;
    }

    if (/updatedAt: Date\(timeIntervalSince1970: 1615142851\),/) {
        s/\),/+${id}\),/;
    }
    print;
}