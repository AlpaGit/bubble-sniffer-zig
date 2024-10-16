// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.notification
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

pub const NotificationUpdateFlagRequest = struct {
    index: i32 = 0,

    pub const _desc_table = .{
        .index = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const NotificationResetRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const NotificationsEvent = struct {
    flags: ArrayList(i32),

    pub const _desc_table = .{
        .flags = fd(1, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const NotificationEvent = struct {
    id: i32 = 0,
    parameters: ArrayList(ManagedString),
    force: bool = false,

    pub const _desc_table = .{
        .id = fd(1, .{ .Varint = .Simple }),
        .parameters = fd(2, .{ .List = .String }),
        .force = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const RemoveNotificationEvent = struct {
    id: ArrayList(i32),

    pub const _desc_table = .{
        .id = fd(1, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
