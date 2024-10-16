// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.choice
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

pub const Choice = struct {
    id: i32 = 0,
    position: i32 = 0,

    pub const _desc_table = .{
        .id = fd(1, .{ .Varint = .Simple }),
        .position = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const VotedChoice = struct {
    id: i32 = 0,
    position: i32 = 0,
    players: ArrayList(i64),

    pub const _desc_table = .{
        .id = fd(1, .{ .Varint = .Simple }),
        .position = fd(2, .{ .Varint = .Simple }),
        .players = fd(3, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChoiceSelectionEvent = struct {
    selection_id: i32 = 0,
    choices: ArrayList(Choice),

    pub const _desc_table = .{
        .selection_id = fd(1, .{ .Varint = .Simple }),
        .choices = fd(2, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightChoiceSelectionEvent = struct {
    selection_id: i32 = 0,
    target_protocol_id: i64 = 0,
    choices: ArrayList(Choice),

    pub const _desc_table = .{
        .selection_id = fd(1, .{ .Varint = .Simple }),
        .target_protocol_id = fd(2, .{ .Varint = .Simple }),
        .choices = fd(3, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChoiceSelectedEvent = struct {
    position: i32 = 0,

    pub const _desc_table = .{
        .position = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ChoiceSelectedRequest = struct {
    position: i32 = 0,

    pub const _desc_table = .{
        .position = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const CurrentGlobalChoiceSelectionEvent = struct {
    selection_id: i32 = 0,
    choices: ArrayList(VotedChoice),

    pub const _desc_table = .{
        .selection_id = fd(1, .{ .Varint = .Simple }),
        .choices = fd(2, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GlobalChoiceSelectionEvent = struct {
    selection_id: i32 = 0,
    choices: ArrayList(Choice),

    pub const _desc_table = .{
        .selection_id = fd(1, .{ .Varint = .Simple }),
        .choices = fd(2, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GlobalChoiceSelectedRequest = struct {
    position: i32 = 0,

    pub const _desc_table = .{
        .position = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GlobalChoiceVoteEvent = struct {
    player_id: i64 = 0,
    choice_position: i32 = 0,

    pub const _desc_table = .{
        .player_id = fd(1, .{ .Varint = .Simple }),
        .choice_position = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GlobalChoiceSelectedEvent = struct {
    position: i32 = 0,

    pub const _desc_table = .{
        .position = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
