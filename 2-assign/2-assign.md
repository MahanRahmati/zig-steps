Let's assign "Hello there!" to hello.
You can assign a constant like this:

```zig
const hello = "Hello there!";
```

This means that our hello is a constant and can't be changed.

To print our "Hello there!":

```zig
const std = @import("std");

pub fn main() void {
    const hello = "Hello there!";
    std.debug.print("{s}\n", .{hello});
}
```

Now let's create a variable named x and assign it the value 5.
You can assign a variable like this:

```zig
var x: u8 = 5;
```

This means that our x is a variable and can be changed.

The "u8" is a type that represents an 8-bit unsigned integer.
If we wanted x to hold a negative number, we had to use an "i8" instead.

An "u8" value can hold values from 0 to 255.
An "i8" value can hold values from -128 to 127.

You can use 8, 16, 32 and 64 to represent the number of bits you want to use.

```zig
const y: u16 = 1024;
const z: i16 = -1024;
```

So when we add 1 to x, it will become 6:

```zig
x = x + 1; // x is now 6
```

When we run the following code, we will see 6 printed to the console:

```zig
const std = @import("std");

pub fn main() void {
    var x: u8 = 5;
    x = x + 1;
    std.debug.print("{}\n", .{x});
}
```

Now let's print both hello and x to the console:

```zig
const std = @import("std");

pub fn main() void {
    const hello = "Hello there!";
    std.debug.print("{s}\n", .{hello});
    var x: u8 = 5;
    x = x + 1;
    std.debug.print("{}\n", .{x});
}
```

The output will be:

```
Hello there!
6
```
