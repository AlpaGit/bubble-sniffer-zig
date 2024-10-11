// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.chat
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;
/// import package com.ankama.dofus.server.game.protocol.common
const com_ankama_dofus_server_game_protocol_common = @import("common.pb.zig");

pub const Channel = enum(i32) {
    GLOBAL = 0,
    TEAM = 1,
    GUILD = 2,
    ALLIANCE = 3,
    PARTY = 4,
    SALES = 5,
    SEEK = 6,
    NOOB = 7,
    ADMIN = 8,
    ARENA = 9,
    PRIVATE = 10,
    INFO = 12,
    FIGHT_LOG = 13,
    ADS = 14,
    EVENT = 15,
    EXCHANGE = 16,
    _,
};

pub const ChatPrivateMessageRequest = struct {
    content: ManagedString = .Empty,
    object: ArrayList(com_ankama_dofus_server_game_protocol_common.ObjectItemInventory),
    target: ?target_union,

    pub const _target_case = enum {
        name,
        tag,
    };
    pub const target_union = union(_target_case) {
        name: ManagedString,
        tag: com_ankama_dofus_server_game_protocol_common.AccountTag,
        pub const _union_desc = .{
            .name = fd(3, .String),
            .tag = fd(4, .{ .SubMessage = {} }),
        };
    };

    pub const _desc_table = .{
        .content = fd(1, .String),
        .object = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .target = fd(null, .{ .OneOf = target_union }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChatPrivateCopyMessageEvent = struct {
    content: ManagedString = .Empty,
    date: ManagedString = .Empty,
    target_character_id: i64 = 0,
    target_name: ManagedString = .Empty,
    object: ArrayList(com_ankama_dofus_server_game_protocol_common.ObjectItemInventory),

    pub const _desc_table = .{
        .content = fd(1, .String),
        .date = fd(2, .String),
        .target_character_id = fd(3, .{ .Varint = .Simple }),
        .target_name = fd(4, .String),
        .object = fd(5, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChatChannelMessageRequest = struct {
    content: ManagedString = .Empty,
    channel: Channel = @enumFromInt(0),
    object: ArrayList(com_ankama_dofus_server_game_protocol_common.ObjectItemInventory),

    pub const _desc_table = .{
        .content = fd(1, .String),
        .channel = fd(2, .{ .Varint = .Simple }),
        .object = fd(3, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChatChannelMessageEvent = struct {
    content: ManagedString = .Empty,
    channel: Channel = @enumFromInt(0),
    date: ManagedString = .Empty,
    sender_character_id: i64 = 0,
    sender_account_id: i64 = 0,
    sender_prefix: ManagedString = .Empty,
    sender_name: ManagedString = .Empty,
    from_admin: bool = false,
    object: ArrayList(com_ankama_dofus_server_game_protocol_common.ObjectItemInventory),
    origin_server_id: ?i32 = null,

    pub const _desc_table = .{
        .content = fd(1, .String),
        .channel = fd(2, .{ .Varint = .Simple }),
        .date = fd(3, .String),
        .sender_character_id = fd(4, .{ .Varint = .Simple }),
        .sender_account_id = fd(5, .{ .Varint = .Simple }),
        .sender_prefix = fd(6, .String),
        .sender_name = fd(7, .String),
        .from_admin = fd(8, .{ .Varint = .Simple }),
        .object = fd(9, .{ .List = .{ .SubMessage = {} } }),
        .origin_server_id = fd(10, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChatErrorEvent = struct {
    @"error": Error = @enumFromInt(0),

    pub const _desc_table = .{
        .@"error" = fd(1, .{ .Varint = .Simple }),
    };

    pub const Error = enum(i32) {
        UNKNOWN = 0,
        RECEIVER_NOT_FOUND = 1,
        INTERIOR_MONOLOGUE = 2,
        NO_GUILD = 3,
        NO_PARTY = 4,
        ALLIANCE = 5,
        INVALID_MAP = 6,
        NO_PARTY_ARENA = 7,
        NO_TEAM = 8,
        MALFORMED_CONTENT = 9,
        NO_EXCHANGE = 10,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SubscribeMultipleChannelRequest = struct {
    channel_enabled: ArrayList(Channel),
    channel_disabled: ArrayList(Channel),

    pub const _desc_table = .{
        .channel_enabled = fd(1, .{ .List = .{ .Varint = .Simple } }),
        .channel_disabled = fd(2, .{ .List = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChannelUpdateEvent = struct {
    channel: Channel = @enumFromInt(0),
    enable: bool = false,

    pub const _desc_table = .{
        .channel = fd(1, .{ .Varint = .Simple }),
        .enable = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChatChannelsEnabledEvent = struct {
    active_channels: ArrayList(Channel),
    disabled_channels: ArrayList(Channel),

    pub const _desc_table = .{
        .active_channels = fd(1, .{ .List = .{ .Varint = .Simple } }),
        .disabled_channels = fd(2, .{ .List = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
