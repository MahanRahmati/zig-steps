Create a file named "hello.zig", with below content:

```zig
pub fn main() void {
    // Nothing to do here
}
```

Now run:

```bash
zig run hello.zig
```

This function is the entry point of your program.
For now, it does nothing and returns void.

Remember that your main function must have the pub keyword.
If you remove pub keyword, you will get error:

```
error: 'main' is not marked 'pub'
```

Now let's write some code in main function to print Hello!
First import the std library:

```zig
const std = @import("std");

pub fn main() void {
    // Nothing to do here
}
```

Now we can use std.debug.print to print Hello to console:

```zig
const std = @import("std");

pub fn main() void {
    std.debug.print("Hello!\n", .{});
}
```

Now run the program again:

```
Hello!
```

Let's pass "there" to print function:

```zig
const std = @import("std");

pub fn main() void {
    std.debug.print("Hello {s}!\n", .{"there"});
}
```

Now run the program again:

```
Hello there!
```
