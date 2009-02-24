use Test::More tests => 1;

use HTML::Parser::Simple;

# -----------------------

my($html)   = '<html><head><title>T</title></head><body>B</body></html>';
my($parser) = HTML::Parser::Simple -> new();

$parser -> parse($html);
$parser -> traverse($parser -> root() );

my($result) = $parser -> result();

is($html, $result, 'Input matches output');