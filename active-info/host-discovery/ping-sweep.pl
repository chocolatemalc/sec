#!/usr/bin/perl

foreach $number (34 .. 100) {
	system("ping -c 1 10.11.1.$number |grep 'bytes from' |cut -d' ' -f 4 |cut -d':' -f 1 &")
}