// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.teleportation
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

pub const Teleporter = enum(i32) {
    TELEPORTER_ZAAP = 0,
    TELEPORTER_SUBWAY = 1,
    TELEPORTER_PRISM = 2,
    TELEPORTER_HAVEN_BAG = 3,
    TELEPORTER_ANOMALY = 4,
    _,
};

pub const TeleportRequest = struct {
    source_type: Teleporter = @enumFromInt(0),
    destination_type: Teleporter = @enumFromInt(0),
    map_id: i64 = 0,

    pub const _desc_table = .{
        .source_type = fd(1, .{ .Varint = .Simple }),
        .destination_type = fd(2, .{ .Varint = .Simple }),
        .map_id = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ZaapRespawnSaveRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportBuddiesAnswerRequest = struct {
    accept: bool = false,

    pub const _desc_table = .{
        .accept = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportToBuddyAnswerRequest = struct {
    accept: bool = false,

    pub const _desc_table = .{
        .accept = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportPlayerAnswerRequest = struct {
    accept: bool = false,

    pub const _desc_table = .{
        .accept = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GroupTeleportPlayerAnswerRequest = struct {
    accept: bool = false,

    pub const _desc_table = .{
        .accept = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ZaapRespawnUpdatedEvent = struct {
    map_id: i64 = 0,

    pub const _desc_table = .{
        .map_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportDestinationsEvent = struct {
    type: Teleporter = @enumFromInt(0),
    destinations: ArrayList(TeleportDestination),
    spawn_map_id: ?i64 = null,

    pub const _desc_table = .{
        .type = fd(1, .{ .Varint = .Simple }),
        .destinations = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .spawn_map_id = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ZaapKnownListEvent = struct {
    destinations: ArrayList(i64),

    pub const _desc_table = .{
        .destinations = fd(1, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportBuddiesEvent = struct {
    dungeon_id: i32 = 0,

    pub const _desc_table = .{
        .dungeon_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportBuddiesRequestedEvent = struct {
    dungeon_id: i32 = 0,
    inviter_id: i64 = 0,
    invalid_buddies_id: ArrayList(i64),

    pub const _desc_table = .{
        .dungeon_id = fd(1, .{ .Varint = .Simple }),
        .inviter_id = fd(2, .{ .Varint = .Simple }),
        .invalid_buddies_id = fd(3, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportToBuddyOfferEvent = struct {
    dungeon_id: i32 = 0,
    buddy_id: i64 = 0,
    time_left: i32 = 0,

    pub const _desc_table = .{
        .dungeon_id = fd(1, .{ .Varint = .Simple }),
        .buddy_id = fd(2, .{ .Varint = .Simple }),
        .time_left = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportToBuddyClosedEvent = struct {
    dungeon_id: i32 = 0,
    buddy_id: i64 = 0,

    pub const _desc_table = .{
        .dungeon_id = fd(1, .{ .Varint = .Simple }),
        .buddy_id = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportPlayerOfferEvent = struct {
    map_id: i64 = 0,
    message: ManagedString = .Empty,
    time_left: i32 = 0,
    requester_id: i64 = 0,

    pub const _desc_table = .{
        .map_id = fd(1, .{ .Varint = .Simple }),
        .message = fd(2, .String),
        .time_left = fd(3, .{ .Varint = .Simple }),
        .requester_id = fd(4, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportPlayerClosedEvent = struct {
    map_id: i64 = 0,
    requester_id: i64 = 0,

    pub const _desc_table = .{
        .map_id = fd(1, .{ .Varint = .Simple }),
        .requester_id = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GroupTeleportPlayerOfferEvent = struct {
    map_id: i64 = 0,
    world_x: i32 = 0,
    world_y: i32 = 0,
    time_left: i32 = 0,
    requester_id: i64 = 0,
    requester_name: ManagedString = .Empty,

    pub const _desc_table = .{
        .map_id = fd(1, .{ .Varint = .Simple }),
        .world_x = fd(2, .{ .Varint = .Simple }),
        .world_y = fd(3, .{ .Varint = .Simple }),
        .time_left = fd(4, .{ .Varint = .Simple }),
        .requester_id = fd(5, .{ .Varint = .Simple }),
        .requester_name = fd(6, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GroupTeleportPlayerClosedEvent = struct {
    map_id: i64 = 0,
    requester_id: i64 = 0,

    pub const _desc_table = .{
        .map_id = fd(1, .{ .Varint = .Simple }),
        .requester_id = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const TeleportDestination = struct {
    type: Teleporter = @enumFromInt(0),
    map_id: i64 = 0,
    subarea_id: i32 = 0,
    level: i32 = 0,
    cost: i32 = 0,
    anomaly: ?Anomaly = null,

    pub const _desc_table = .{
        .type = fd(1, .{ .Varint = .Simple }),
        .map_id = fd(2, .{ .Varint = .Simple }),
        .subarea_id = fd(3, .{ .Varint = .Simple }),
        .level = fd(4, .{ .Varint = .Simple }),
        .cost = fd(5, .{ .Varint = .Simple }),
        .anomaly = fd(6, .{ .SubMessage = {} }),
    };

    pub const Anomaly = struct {
        bonus_pourcentage: i32 = 0,
        remaining_time: i64 = 0,

        pub const _desc_table = .{
            .bonus_pourcentage = fd(1, .{ .Varint = .Simple }),
            .remaining_time = fd(2, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
