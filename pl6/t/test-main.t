use v6.d;
use Test;
use lib 'lib';

use RustNative;

plan 1;

is 42, get_42;

done-testing;
