use strict;
use warnings FATAL => 'all';
use Apache::Test;
use Apache::TestRequest;
use Apache::TestUtil qw(t_cmp);
use lib 't';
use MY::slurp;

# Test "Content-Type" headers with additional attributes (e.g. "charset")
plan tests => 1, need_lwp;

# JS content-type should be acceptable
charset_minified: {
    my $body = GET_BODY '/charset';
    my $min  = slurp( 't/htdocs/minified.txt' );
    chomp($min);

    ok( t_cmp($body, $min) );
}
