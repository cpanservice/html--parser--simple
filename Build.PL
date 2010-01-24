use Module::Build;

my($builder) = Module::Build -> new
(
	meta_merge => {
		resources => {
			repository => 'http://github.com/ronsavage/html--parser--simple',
		},
	},

	module_name    => 'HTML::Parser::Simple',
	license        => 'artistic',
	dist_abstract  => 'Parse nice HTML files without needing a compiler',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
		Test::More => 0,
		Test::Pod  => 0,
	},
	requires =>
	{
		Carp         => 0,
		Tree::Simple => 0,
		perl         => 5.006,
	},
);

$builder -> create_build_script();
