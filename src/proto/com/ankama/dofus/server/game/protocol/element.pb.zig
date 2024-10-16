// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.element
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

pub const LockableUseCodeRequest = struct {
    code: ManagedString = .Empty,

    pub const _desc_table = .{
        .code = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const LockableChangeCodeRequest = struct {
    code: ManagedString = .Empty,

    pub const _desc_table = .{
        .code = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const PurchasableDialogEvent = struct {
    action: Action = @enumFromInt(0),
    purchasable_id: i64 = 0,
    purchasable_instance_id: i32 = 0,
    second_hand: bool = false,
    price: i64 = 0,

    pub const _desc_table = .{
        .action = fd(1, .{ .Varint = .Simple }),
        .purchasable_id = fd(2, .{ .Varint = .Simple }),
        .purchasable_instance_id = fd(3, .{ .Varint = .Simple }),
        .second_hand = fd(4, .{ .Varint = .Simple }),
        .price = fd(5, .{ .Varint = .Simple }),
    };

    pub const Action = enum(i32) {
        BUY = 0,
        SELL = 1,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const LockableShowCodeDialogEvent = struct {
    action: Action = @enumFromInt(0),
    code_size: i32 = 0,

    pub const _desc_table = .{
        .action = fd(1, .{ .Varint = .Simple }),
        .code_size = fd(2, .{ .Varint = .Simple }),
    };

    pub const Action = enum(i32) {
        CHANGE = 0,
        USE = 1,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const LockableCodeResultEvent = struct {
    result: LockableResult = @enumFromInt(0),

    pub const _desc_table = .{
        .result = fd(1, .{ .Varint = .Simple }),
    };

    pub const LockableResult = enum(i32) {
        UNLOCKED = 0,
        CODE_ERROR = 1,
        UNLOCK_FORBIDDEN = 2,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const LockableStateUpdateHouseDoorEvent = struct {
    house_id: i32 = 0,
    house_instance_id: i32 = 0,
    second_hand: bool = false,
    locked: bool = false,

    pub const _desc_table = .{
        .house_id = fd(1, .{ .Varint = .Simple }),
        .house_instance_id = fd(2, .{ .Varint = .Simple }),
        .second_hand = fd(3, .{ .Varint = .Simple }),
        .locked = fd(4, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
