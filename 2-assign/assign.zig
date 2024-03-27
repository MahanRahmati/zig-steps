const std = @import("std");

pub fn main() void {
    const hello = "Hello there!";
    std.debug.print("{s}\n", .{hello});
    var x: u8 = 5;
    x = x + 1;
    std.debug.print("{}\n", .{x});
}
