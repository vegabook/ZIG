pub fn main() void {
    @compileLog("Hello from comptime inside the compiler!");
    std.debug.print("Hello world\n", .{});
}
