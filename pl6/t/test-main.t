use v6.d;
use Test;
use lib 'lib';

use RustNative;

plan 2;

subtest "Basic", {
    plan 1;
    is 42, get_42, "get_42 should return 42";
    done-testing;
}

subtest "Point", {
    plan 2;
    my $p1 = Point.new(x => 0.0.Num, y => 0.0.Num);
    my $p2 = Point.new(x => 3.0.Num, y => 4.0.Num);
    is-approx get_distance($p1, $p2), 5.0, 1e-10, "distance from (0,0) to (3,4) should return 5";
    is-approx get_distance($p1, $p1), 0.0, 1e-10, "distance from point to itself should return 0";
    done-testing;
}

done-testing;
