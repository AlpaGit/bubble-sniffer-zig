// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.social
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;
/// import package com.ankama.dofus.server.game.protocol.common
const com_ankama_dofus_server_game_protocol_common = @import("common.pb.zig");

pub const SmileyRequest = struct {
    smiley_id: i32 = 0,

    pub const _desc_table = .{
        .smiley_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SmileyEvent = struct {
    entity_id: i64 = 0,
    smiley_id: i32 = 0,
    account_id: ?i64 = null,
    cell_id: ?i32 = null,

    pub const _desc_table = .{
        .entity_id = fd(1, .{ .Varint = .Simple }),
        .smiley_id = fd(2, .{ .Varint = .Simple }),
        .account_id = fd(3, .{ .Varint = .Simple }),
        .cell_id = fd(4, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AdditionalSmileyEvent = struct {
    pack_id: ArrayList(i32),

    pub const _desc_table = .{
        .pack_id = fd(1, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SetMoodRequest = struct {
    smiley_id: i32 = 0,

    pub const _desc_table = .{
        .smiley_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SetMoodEvent = struct {
    result: Result = @enumFromInt(0),
    smiley_id: i32 = 0,

    pub const _desc_table = .{
        .result = fd(1, .{ .Varint = .Simple }),
        .smiley_id = fd(2, .{ .Varint = .Simple }),
    };

    pub const Result = enum(i32) {
        OK = 0,
        ERROR_UNKNOWN = 1,
        ERROR_FLOOD = 2,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const MoodUpdateEvent = struct {
    account_id: i64 = 0,
    character_id: i64 = 0,
    smiley_id: i32 = 0,

    pub const _desc_table = .{
        .account_id = fd(1, .{ .Varint = .Simple }),
        .character_id = fd(2, .{ .Varint = .Simple }),
        .smiley_id = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SpouseStatusEvent = struct {
    has_spouse: bool = false,

    pub const _desc_table = .{
        .has_spouse = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SpouseInformationRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SpouseInformationEvent = struct {
    account_id: i64 = 0,
    character_id: i64 = 0,
    character_name: ManagedString = .Empty,
    character_level: i32 = 0,
    breed_id: i32 = 0,
    gender: com_ankama_dofus_server_game_protocol_common.Gender = @enumFromInt(0),
    guild: ?com_ankama_dofus_server_game_protocol_common.GuildInformation = null,
    alliance: ?com_ankama_dofus_server_game_protocol_common.AllianceInformation = null,
    alignment: com_ankama_dofus_server_game_protocol_common.Alignment = @enumFromInt(0),
    entity_look: ?com_ankama_dofus_server_game_protocol_common.EntityLook = null,
    online: ?Online = null,

    pub const _desc_table = .{
        .account_id = fd(1, .{ .Varint = .Simple }),
        .character_id = fd(2, .{ .Varint = .Simple }),
        .character_name = fd(3, .String),
        .character_level = fd(4, .{ .Varint = .Simple }),
        .breed_id = fd(5, .{ .Varint = .Simple }),
        .gender = fd(6, .{ .Varint = .Simple }),
        .guild = fd(7, .{ .SubMessage = {} }),
        .alliance = fd(8, .{ .SubMessage = {} }),
        .alignment = fd(9, .{ .Varint = .Simple }),
        .entity_look = fd(10, .{ .SubMessage = {} }),
        .online = fd(11, .{ .SubMessage = {} }),
    };

    pub const Online = struct {
        map_id: i64 = 0,
        sub_area_id: i32 = 0,
        area_id: i32 = 0,
        in_fight: bool = false,
        following: bool = false,

        pub const _desc_table = .{
            .map_id = fd(1, .{ .Varint = .Simple }),
            .sub_area_id = fd(2, .{ .Varint = .Simple }),
            .area_id = fd(3, .{ .Varint = .Simple }),
            .in_fight = fd(4, .{ .Varint = .Simple }),
            .following = fd(5, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const JoinFriendRequest = struct {
    actor_id: i64 = 0,

    pub const _desc_table = .{
        .actor_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const JoinSpouseRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SubscribeSpouseCompassRequest = struct {
    enable: bool = false,

    pub const _desc_table = .{
        .enable = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const DiceRollRequest = struct {
    dice: i32 = 0,
    faces: i32 = 0,

    pub const _desc_table = .{
        .dice = fd(1, .{ .Varint = .Simple }),
        .faces = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const PvpEnableSetRequest = struct {
    enable: bool = false,

    pub const _desc_table = .{
        .enable = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const PlayersMapAttackableStatusUpdateEvent = struct {
    pvp_players: ArrayList(AttackableStatus),

    pub const _desc_table = .{
        .pvp_players = fd(1, .{ .List = .{ .SubMessage = {} } }),
    };

    pub const AttackableStatus = struct {
        character_id: i64 = 0,
        status: com_ankama_dofus_server_game_protocol_common.AttackableStatus = @enumFromInt(0),
        koth_role: i32 = 0,
        picto_score: ?i32 = null,

        pub const _desc_table = .{
            .character_id = fd(1, .{ .Varint = .Simple }),
            .status = fd(2, .{ .Varint = .Simple }),
            .koth_role = fd(3, .{ .Varint = .Simple }),
            .picto_score = fd(4, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SelfAttackableStatusUpdateEvent = struct {
    status: com_ankama_dofus_server_game_protocol_common.AttackableStatus = @enumFromInt(0),
    probation_time: i64 = 0,
    koth_role: i32 = 0,
    picto_score: i32 = 0,

    pub const _desc_table = .{
        .status = fd(1, .{ .Varint = .Simple }),
        .probation_time = fd(2, .{ .Varint = .Simple }),
        .koth_role = fd(3, .{ .Varint = .Simple }),
        .picto_score = fd(4, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AlignmentRankUpdateEvent = struct {
    alignment_rank: i32 = 0,
    verbose: bool = false,

    pub const _desc_table = .{
        .alignment_rank = fd(1, .{ .Varint = .Simple }),
        .verbose = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
