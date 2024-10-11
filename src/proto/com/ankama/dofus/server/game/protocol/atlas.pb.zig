// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.atlas
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;
/// import package com.ankama.dofus.server.game.protocol.common
const com_ankama_dofus_server_game_protocol_common = @import("common.pb.zig");

pub const CompassType = enum(i32) {
    SIMPLE = 0,
    SPOUSE = 1,
    PARTY = 2,
    PVP_SEEK = 3,
    QUEST = 4,
    _,
};

pub const CompassResetEvent = struct {
    type: CompassType = @enumFromInt(0),

    pub const _desc_table = .{
        .type = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const CompassUpdateEvent = struct {
    type: CompassType = @enumFromInt(0),
    coordinates: ?com_ankama_dofus_server_game_protocol_common.MapCoordinates = null,
    complement: ?complement_union,

    pub const _complement_case = enum {
        party_member,
        pvp_seek,
    };
    pub const complement_union = union(_complement_case) {
        party_member: PartyMember,
        pvp_seek: PvpSeek,
        pub const _union_desc = .{
            .party_member = fd(3, .{ .SubMessage = {} }),
            .pvp_seek = fd(4, .{ .SubMessage = {} }),
        };
    };

    pub const _desc_table = .{
        .type = fd(1, .{ .Varint = .Simple }),
        .coordinates = fd(2, .{ .SubMessage = {} }),
        .complement = fd(null, .{ .OneOf = complement_union }),
    };

    pub const PartyMember = struct {
        member_id: i64 = 0,
        active: bool = false,

        pub const _desc_table = .{
            .member_id = fd(1, .{ .Varint = .Simple }),
            .active = fd(2, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub const PvpSeek = struct {
        target_id: i64 = 0,
        target_name: ManagedString = .Empty,

        pub const _desc_table = .{
            .target_id = fd(1, .{ .Varint = .Simple }),
            .target_name = fd(2, .String),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
