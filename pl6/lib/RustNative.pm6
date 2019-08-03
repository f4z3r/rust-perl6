use v6.d;

use NativeCall;

sub get_42() returns int32 is export is native('../target/debug/rust_perl6') { * }

class Point is repr('CStruct') {
    has num64 $.x;
    has num64 $.y;
}

sub get_distance(Point is rw, Point is rw) returns num64 is export is native('../target/debug/rust_perl6') { * }
