# Pragmas.
use strict;
use warnings;

# Modules.
use English qw(-no_match_vars);
use PYX::XMLNorm;
use Test::More 'tests' => 2;

# Test.
eval {
	PYX::XMLNorm->new('');
};
ok($EVAL_ERROR, "Unknown parameter ''.");

# Test.
eval {
	PYX::XMLNorm->new(
		'something' => 'value',
	);
};
ok($EVAL_ERROR, "Unknown parameter 'something'.");
