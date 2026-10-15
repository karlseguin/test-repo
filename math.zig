const std = @import("std");

pub fn add(a: i32, b: i32) i32 {
    return a + b;
}

pub fn sub(a: i32, b: i32) i32 {
    return a - b;
}

pub fn mul(a: i32, b: i32) i32 {
    return a * b;
}

pub fn div(a: i32, b: i32) i32 {
    return @divTrunc(a, b);
}

test "add" {
    try std.testing.expectEqual(3, add(1, 2));
}

test "sub" {
    try std.testing.expectEqual(1, sub(3, 2));
}
