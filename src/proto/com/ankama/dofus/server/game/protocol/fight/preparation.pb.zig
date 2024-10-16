// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.fight.preparation
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;
/// import package com.ankama.dofus.server.game.protocol.common
const com_ankama_dofus_server_game_protocol_common = @import("../common.pb.zig");

pub const FightJoinRequest = struct {
    fighter_id: i64 = 0,
    fight_id: i32 = 0,

    pub const _desc_table = .{
        .fighter_id = fd(1, .{ .Varint = .Simple }),
        .fight_id = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightSpectatePlayerRequest = struct {
    player_id: i64 = 0,

    pub const _desc_table = .{
        .player_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightPlacementPositionRequest = struct {
    cell_id: i32 = 0,
    entity_id: i64 = 0,

    pub const _desc_table = .{
        .cell_id = fd(1, .{ .Varint = .Simple }),
        .entity_id = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightPlacementSwapPositionsCancelRequest = struct {
    request_id: i32 = 0,

    pub const _desc_table = .{
        .request_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightPlacementSwapPositionsAcceptRequest = struct {
    request_id: i32 = 0,

    pub const _desc_table = .{
        .request_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightOptionToggleRequest = struct {
    option: com_ankama_dofus_server_game_protocol_common.FightOption = @enumFromInt(0),

    pub const _desc_table = .{
        .option = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightReadyRequest = struct {
    is_ready: bool = false,

    pub const _desc_table = .{
        .is_ready = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightStartingEvent = struct {
    fight_type: com_ankama_dofus_server_game_protocol_common.FightType = @enumFromInt(0),
    fight_id: i32 = 0,
    attacker_id: i64 = 0,
    defender_id: i64 = 0,
    contain_boss: bool = false,
    monsters: ArrayList(i32),

    pub const _desc_table = .{
        .fight_type = fd(1, .{ .Varint = .Simple }),
        .fight_id = fd(2, .{ .Varint = .Simple }),
        .attacker_id = fd(3, .{ .Varint = .Simple }),
        .defender_id = fd(4, .{ .Varint = .Simple }),
        .contain_boss = fd(5, .{ .Varint = .Simple }),
        .monsters = fd(6, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightJoinEvent = struct {
    is_team_phase: bool = false,
    can_be_cancelled: bool = false,
    can_say_ready: bool = false,
    is_fight_started: bool = false,
    time_max_before_fight_start: i64 = 0,
    fight_type: com_ankama_dofus_server_game_protocol_common.FightType = @enumFromInt(0),

    pub const _desc_table = .{
        .is_team_phase = fd(1, .{ .Varint = .Simple }),
        .can_be_cancelled = fd(2, .{ .Varint = .Simple }),
        .can_say_ready = fd(3, .{ .Varint = .Simple }),
        .is_fight_started = fd(4, .{ .Varint = .Simple }),
        .time_max_before_fight_start = fd(5, .{ .Varint = .Simple }),
        .fight_type = fd(6, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightSpectatorJoinEvent = struct {
    fight_join_event: ?FightJoinEvent = null,
    named_party_teams: ArrayList(com_ankama_dofus_server_game_protocol_common.NamedPartyTeam),

    pub const _desc_table = .{
        .fight_join_event = fd(1, .{ .SubMessage = {} }),
        .named_party_teams = fd(2, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightPlacementPossiblePositionsEvent = struct {
    starting_positions: ?com_ankama_dofus_server_game_protocol_common.FightStartingPositions = null,
    team: com_ankama_dofus_server_game_protocol_common.Team = @enumFromInt(0),

    pub const _desc_table = .{
        .starting_positions = fd(1, .{ .SubMessage = {} }),
        .team = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightPlacementSwapPositionsErrorEvent = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightPlacementSwapPositionsOfferEvent = struct {
    request_id: i32 = 0,
    requester_id: i64 = 0,
    requester_cell_id: i32 = 0,
    target_id: i64 = 0,
    target_cell_id: i32 = 0,

    pub const _desc_table = .{
        .request_id = fd(1, .{ .Varint = .Simple }),
        .requester_id = fd(2, .{ .Varint = .Simple }),
        .requester_cell_id = fd(3, .{ .Varint = .Simple }),
        .target_id = fd(4, .{ .Varint = .Simple }),
        .target_cell_id = fd(5, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightPlacementSwapPositionsCancelledEvent = struct {
    request_id: i32 = 0,
    canceller_id: i64 = 0,

    pub const _desc_table = .{
        .request_id = fd(1, .{ .Varint = .Simple }),
        .canceller_id = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightPlacementSwapPositionsEvent = struct {
    dispositions: ArrayList(com_ankama_dofus_server_game_protocol_common.EntityDisposition),

    pub const _desc_table = .{
        .dispositions = fd(1, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightOptionUpdateEvent = struct {
    fight_id: i32 = 0,
    team: com_ankama_dofus_server_game_protocol_common.Team = @enumFromInt(0),
    option: com_ankama_dofus_server_game_protocol_common.FightOption = @enumFromInt(0),
    state: bool = false,

    pub const _desc_table = .{
        .fight_id = fd(1, .{ .Varint = .Simple }),
        .team = fd(2, .{ .Varint = .Simple }),
        .option = fd(3, .{ .Varint = .Simple }),
        .state = fd(4, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightTeamUpdateEvent = struct {
    fight_id: i32 = 0,
    team: ?com_ankama_dofus_server_game_protocol_common.FightTeamInformation = null,

    pub const _desc_table = .{
        .fight_id = fd(1, .{ .Varint = .Simple }),
        .team = fd(2, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightTeamRemoveMemberEvent = struct {
    fight_id: i32 = 0,
    team: com_ankama_dofus_server_game_protocol_common.Team = @enumFromInt(0),
    character_id: i64 = 0,

    pub const _desc_table = .{
        .fight_id = fd(1, .{ .Varint = .Simple }),
        .team = fd(2, .{ .Varint = .Simple }),
        .character_id = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightHumanReadyStateEvent = struct {
    character_id: i64 = 0,
    is_ready: bool = false,

    pub const _desc_table = .{
        .character_id = fd(1, .{ .Varint = .Simple }),
        .is_ready = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightLeaveEvent = struct {
    character_id: i64 = 0,

    pub const _desc_table = .{
        .character_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightStartEvent = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FightMapRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};
