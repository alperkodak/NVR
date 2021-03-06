#!/usr/bin/perl

%res_num_to_rdc = ();

open(MR, "< 2I5O.mr");
while ($line = <MR>) {
    if ($line =~ m/^! RDC\((.+)/) 
    {
	$rdc_type       = $1;
	open(OUT, "> $rdc_type.m");
	
    }


    if ($line =~ m/resid\s+(\d+) and name\s+(\w+)\)\s+(\-*\d+.\d+).+$/) {
	$res_num   = $1;
	$atom_type = $2;
	$rdc       = $3;
	
	if ($atom_type eq "HA") {
	    $res_num_to_rdc{$res_num} = $rdc;
	} elsif ($atom_type eq "HN") {
	    $res_num_to_rdc{$res_num} = $rdc;
	}
    }
}
close(MR);
