# Modules.
use IO::Scalar;

# Helper function.
sub get_stdout {
	my ($obj, $file) = @_;

	# Parse example.
	my $stdout;
	tie *STDOUT, 'IO::Scalar', \$stdout;
	eval {
		$obj->parse_file($file);
	};
	untie *STDOUT;
	return $stdout;
}
