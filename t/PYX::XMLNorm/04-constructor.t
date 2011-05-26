# Pragmas.
use strict;
use warnings;

# Modules.
use English qw(-no_match_vars);
use PYX::XMLNorm;
use Test::More 'tests' => 2;

# Test.
eval {
	$class->new('');
};
ok($EVAL_ERROR, "Unknown parameter ''.");

# Test.
eval {
	$class->new(
		'something' => 'value',
	);
};
ok($EVAL_ERROR, "Unknown parameter 'something'.");
