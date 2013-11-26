# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'TODO';
author 'Michal Špaček <skim@cpan.org>';
install_script 'bin/pyx-xml-normalization';
license 'bsd';
name 'PYX-XMLNorm';
readme_from 'XMLNorm.pm';
requires 'Class::Utils' => 0.05;
requires 'Error::Pure' => 0.15;
requires 'PYX' => 0.01;
requires 'PYX::Parser' => 0.01;
requires 'perl' => '5.6.2';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=PYX-XMLNorm';
resources 'homepage' => 'https://github.com/tupinek/PYX-XMLNorm';
resources 'repository' => 'git://github.com/tupinek/PYX-XMLNorm';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.07;
test_requires 'File::Slurp' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Output' => 1.02;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
