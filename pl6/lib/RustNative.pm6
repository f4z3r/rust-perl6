use v6.d;

use NativeCall;

sub get_42() returns int32 is export is native('../target/debug/rust_perl6') { * }
