// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.area
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

pub const SubareaRewardRateEvent = struct {
    subarea_rate: i32 = 0,

    pub const _desc_table = .{
        .subarea_rate = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AreaFightModifierUpdateEvent = struct {
    spell_pairs: ArrayList(i32),

    pub const _desc_table = .{
        .spell_pairs = fd(1, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
