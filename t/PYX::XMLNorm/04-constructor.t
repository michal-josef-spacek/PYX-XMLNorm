# Modules.
use English qw(-no_match_vars);
use PYX::XMLNorm;
use Test::More 'tests' => 2;

# Debug message.
print "Testing constructor.\n";

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
