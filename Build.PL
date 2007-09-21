use strict;
use warnings;
use Module::Build;

my $build_pkg = eval { require Apache::TestMB }
                    ? 'Apache::TestMB'
                    : 'Module::Build';
$build_pkg->new(
    'module_name'       => 'Apache2::Filter::Minifier::JavaScript',
    'license'           => 'perl',
    'dist_author'       => 'Graham TerMarsch (cpan@howlingfrog.com)',
    'build_requires'    => {
        'Apache::Test'          => 1.12,
        },
    'requires'          => {
        'JavaScript::Minifier'  => 0,
        'mod_perl2'             => 2.0,
        },
    )->create_build_script();
