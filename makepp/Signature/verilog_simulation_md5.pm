# $Id: verilog_simulation_md5.pm,v 1.3 2006/04/18 21:46:19 pfeiffer Exp $
use strict;
package Signature::verilog_simulation_md5;

use Signature::c_compilation_md5;
our @ISA = qw(Signature::c_compilation_md5);

=head1 NAME

Signature::verilog_simulation_md5 -- a signature class that ignores changes to whitespace and comments

=head1 DESCRIPTION

Very similar to Signature::c_compilation_md5, except that it recognizes
different filenames.

=cut

our $verilog_simulation_md5 = bless \@ISA; # Make the singleton object.

sub recognizes_file {
  my $finfo = $_[1];
  return $finfo->{NAME} =~ /\.v$/;
}

1;
