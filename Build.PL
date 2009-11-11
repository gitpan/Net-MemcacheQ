#########
# Author:        rmp
# Last Modified: $Date$
# Id:            $Id$
# Source:        $Source$
# $HeadURL$
#
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
				 module_name         => 'Net-MemcacheQ',
				 dist_author         => 'Roger M Pettett <rmp@psyphi.net>',
				 dist_version        => do { my ($r) = q$Revision: 1 $ =~ /(\d+)/smx; $r; },
				 dist_abstract       => q[Basic socket abstraction for memcacheq],
				 license             => 'perl',
				 requires            => {
							 'base'                        => '2.13',
							 'Carp'                        => '1.08',
							 'IO::Socket::INET'            => '1.31',
							 'Readonly'                    => '1.03',
							 'strict'                      => '1.03',
							 'warnings'                    => '1.05_01',
							},
				 recommends          => {
							},
				 build_requires      => {
							 'Test::Distribution'      => '2.00',
							 'Test::More'              => '0.8',
							 'Test::Perl::Critic'      => '1.01',
							 'IO::Scalar'              => '2.110',
							},
				 build_recommends    => {
							},
				 create_makefile_pl  => 'passthrough',
#				 script_files        => qw(),
				 sign                => 1,
				);

$builder->create_build_script();