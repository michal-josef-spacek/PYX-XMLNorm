# Modules.
use File::Object;
use PYX::XMLNorm;
use Test::More 'tests' => 8;

# Directories.
my $data_dir = File::Object->new->up->dir('data');

# Include helpers.
do File::Object->new->up->file('get_stdout.inc')->s;

# Debug print.
print "Testing: parse() method.\n";

# Test.
my $rules_hr = {
	'*' => ['br', 'hr', 'link', 'meta', 'input'],
	'html' => ['body'],
	'table' => ['td', 'tr'],
	'td' => ['td'],
	'th' => ['th'],
	'tr' => ['td', 'th', 'tr'],
};
my $obj = PYX::XMLNorm->new(
	'rules' => $rules_hr,
);
my $ret = get_stdout($obj, $data_dir->file('ex1.pyx')->s);
my $right_ret = <<"END";
(html
(head
(link
)link
(meta
)meta
)head
(body
(input
)input
(br
)br
(hr
)hr
)body
)html
END
is($ret, $right_ret);

# Test.
$ret = get_stdout($obj, $data_dir->file('ex2.pyx')->s);
$right_ret = <<"END";
(table
(tr
(td
-example1
)td
(td
-example2
)td
)tr
(tr
(td
-example1
)td
(td
-example2
)td
)tr
)table
END
is($ret, $right_ret);

# Test.
$ret = get_stdout($obj, $data_dir->file('ex3')->s);
is($ret, $right_ret);

# Test.
$ret = get_stdout($obj, $data_dir->file('ex4.pyx')->s);
$right_ret = <<"END";
(html
(head
(LINK
)LINK
(meta
)meta
(META
)META
)head
(body
(input
)input
(br
)br
(BR
)BR
(hr
)hr
(hr
)hr
)body
)html
END
is($ret, $right_ret);

# Test.
$ret = get_stdout($obj, $data_dir->file('ex5.pyx')->s);
$right_ret = <<"END";
(td
(table
(tr
(td
-text1
)td
(td
-text2
)td
)tr
)table
)td
END
is($ret, $right_ret);

# Test.
$ret = get_stdout($obj, $data_dir->file('ex6.pyx')->s);
$right_ret = <<"END";
(br
)br
-text
END
is($ret, $right_ret);

# Test.
$ret = get_stdout($obj, $data_dir->file('ex7.pyx')->s);
$right_ret = <<"END";
(br
)br
(br
)br
-text
END
is($ret, $right_ret);

# Test.
$ret = get_stdout($obj, $data_dir->file('ex8.pyx')->s);
$right_ret = <<"END";
(table
(tr
(td
-text
)td
)tr
)table
END
is($ret, $right_ret);
