

const std = @import("std");

pub fn main() !void {
    var array: [10000000]f32 = undefined;

    // Initialize PRNG with cryptographically secure seed
    var prng = std.Random.DefaultPrng.init(blk: {
        var seed: u64 = undefined;
        try std.posix.getrandom(std.mem.asBytes(&seed));
        break :blk seed;
    });
    const rand = prng.random();

    // Fill with random f32 in [0.0, 1.0)
    for (&array) |*elem| {
        elem.* = rand.float(f32);
    }

}
