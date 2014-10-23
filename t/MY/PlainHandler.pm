package MY::PlainHandler;

use strict;
use warnings;
use Apache2::RequestIO qw();
use Apache2::RequestRec qw();
use Apache2::RequestUtil qw();
use Apache2::Const -compile => qw(OK);
use File::Spec::Functions qw(catfile);
use MY::slurp;

sub handler {
    my $r = shift;
    $r->content_type('text/plain');
    $r->print( slurp(catfile($r->document_root,'test.txt')) );
    return Apache2::Const::OK;
}

1;
