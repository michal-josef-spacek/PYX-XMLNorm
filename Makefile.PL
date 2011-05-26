# Pragmas.
use strict;
use warnings;

# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
	'EXE_FILES' => [
		'bin/pyx_xml_normalization',
	],
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
