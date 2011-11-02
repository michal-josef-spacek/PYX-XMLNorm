# Pragmas.
use strict;
use warnings;

# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
	'BUILD_REQUIRES' => {
		'English' => 0,
		'File::Object' => 0,
		'File::Slurp' => 0,
		'Test::More' => 0,
		'Test::Output' => 0,
		'Test::Pod' => 0,
		'Test::Pod::Coverage' => 0,
	},
	'CONFIGURE_REQUIRES' => {
		'ExtUtils::MakeMaker' => 0,
	},
	'EXE_FILES' => [
		'bin/pyx_xml_normalization',
	],
	'LICENSE' => 'bsd',
	'NAME' => 'PYX::XMLNorm',
	'PREREQ_PM' => {
		'Class::Utils' => 0.01,
		'Error::Pure' => 0.01,
		'PYX' => 0.01,
		'PYX::Parser' => 0.01,
	},
	'VERSION' => '0.01',
	'test' => {
		'TESTS' => 't/PYX::XMLNorm/*.t',
	},
);
