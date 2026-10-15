const std = @import("std");

pub fn add(a: i32, b: i32) i32 {
    return a + b;
}


pub fn mul(a: i32, b: i32) i32 {
    return a * b;
}

pub fn div(a: i32, b: i32) !i32 {
    if (b == 0) return error.DivisionByZero;
    return @divTrunc(a, b);
}

test "add" {
    try std.testing.expectEqual(3, add(1, 2));
}

test "div" {
    try std.testing.expectEqual(2, try div(4, 2));
    try std.testing.expectError(error.DivisionByZero, div(1, 0));
}
