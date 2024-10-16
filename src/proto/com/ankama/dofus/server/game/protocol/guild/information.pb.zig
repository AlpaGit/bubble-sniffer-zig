// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.guild.information
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;
/// import package com.ankama.dofus.server.game.protocol.common
const com_ankama_dofus_server_game_protocol_common = @import("../common.pb.zig");

pub const GuildLogbookRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildSummaryRequest = struct {
    offset: i64 = 0,
    count: i32 = 0,
    name_filter: ManagedString = .Empty,
    hide_full_filter: bool = false,
    following_guild_criteria: bool = false,
    criterion_filter: ArrayList(i32),
    languages_filter: ArrayList(i32),
    recruitment_type_filters: ArrayList(com_ankama_dofus_server_game_protocol_common.SocialRecruitmentType),
    min_level_filter: i32 = 0,
    max_level_filter: i32 = 0,
    min_player_level_filter: i32 = 0,
    max_player_level_filter: i32 = 0,
    min_success_filter: i32 = 0,
    max_success_filter: i32 = 0,
    sort_type: SummarySort = @enumFromInt(0),
    sort_descending: bool = false,

    pub const _desc_table = .{
        .offset = fd(1, .{ .Varint = .Simple }),
        .count = fd(2, .{ .Varint = .Simple }),
        .name_filter = fd(3, .String),
        .hide_full_filter = fd(4, .{ .Varint = .Simple }),
        .following_guild_criteria = fd(5, .{ .Varint = .Simple }),
        .criterion_filter = fd(6, .{ .PackedList = .{ .Varint = .Simple } }),
        .languages_filter = fd(7, .{ .PackedList = .{ .Varint = .Simple } }),
        .recruitment_type_filters = fd(8, .{ .List = .{ .Varint = .Simple } }),
        .min_level_filter = fd(9, .{ .Varint = .Simple }),
        .max_level_filter = fd(10, .{ .Varint = .Simple }),
        .min_player_level_filter = fd(11, .{ .Varint = .Simple }),
        .max_player_level_filter = fd(12, .{ .Varint = .Simple }),
        .min_success_filter = fd(13, .{ .Varint = .Simple }),
        .max_success_filter = fd(14, .{ .Varint = .Simple }),
        .sort_type = fd(15, .{ .Varint = .Simple }),
        .sort_descending = fd(16, .{ .Varint = .Simple }),
    };

    pub const SummarySort = enum(i32) {
        SORT_BY_NAME = 0,
        SORT_BY_LEVEL = 1,
        SORT_BY_NB_MEMBERS = 2,
        SORT_BY_LAST_ACTIVITY = 3,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildInformationRequest = struct {
    information_type: InformationType = @enumFromInt(0),

    pub const _desc_table = .{
        .information_type = fd(1, .{ .Varint = .Simple }),
    };

    pub const InformationType = enum(i32) {
        INFO_GENERAL = 0,
        INFO_MEMBERS = 1,
        INFO_BOOSTS = 2,
        INFO_PADDOCKS = 3,
        INFO_HOUSES = 4,
        INFO_RECRUITMENT = 5,
        INFO_LOGBOOK = 6,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildModificationNameValidRequest = struct {
    name: ManagedString = .Empty,

    pub const _desc_table = .{
        .name = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildModificationEmblemValidRequest = struct {
    emblem: ?com_ankama_dofus_server_game_protocol_common.SocialEmblem = null,

    pub const _desc_table = .{
        .emblem = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildModificationValidRequest = struct {
    name: ManagedString = .Empty,
    emblem: ?com_ankama_dofus_server_game_protocol_common.SocialEmblem = null,

    pub const _desc_table = .{
        .name = fd(1, .String),
        .emblem = fd(2, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildCreationValidRequest = struct {
    name: ManagedString = .Empty,
    emblem: ?com_ankama_dofus_server_game_protocol_common.SocialEmblem = null,

    pub const _desc_table = .{
        .name = fd(1, .String),
        .emblem = fd(2, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildInvitationRequest = struct {
    target_id: i64 = 0,

    pub const _desc_table = .{
        .target_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildInvitationAnswerRequest = struct {
    accepted: bool = false,

    pub const _desc_table = .{
        .accepted = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildKickRequest = struct {
    kicked_id: i64 = 0,

    pub const _desc_table = .{
        .kicked_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildJoinAutomaticallyRequest = struct {
    guild_id: i32 = 0,

    pub const _desc_table = .{
        .guild_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildPaddockTeleportRequest = struct {
    paddock_id: i64 = 0,

    pub const _desc_table = .{
        .paddock_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildMotdSetRequest = struct {
    content: ManagedString = .Empty,

    pub const _desc_table = .{
        .content = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildBulletinSetRequest = struct {
    content: ManagedString = .Empty,

    pub const _desc_table = .{
        .content = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildCardRequest = struct {
    guild_id: i32 = 0,

    pub const _desc_table = .{
        .guild_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildNoteUpdateRequest = struct {
    player_id: i64 = 0,
    note: ManagedString = .Empty,

    pub const _desc_table = .{
        .player_id = fd(1, .{ .Varint = .Simple }),
        .note = fd(2, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildLogbookEvent = struct {
    global_activities: ArrayList(com_ankama_dofus_server_game_protocol_common.GuildLogbookEntry),
    chest_activities: ArrayList(com_ankama_dofus_server_game_protocol_common.GuildLogbookEntry),

    pub const _desc_table = .{
        .global_activities = fd(1, .{ .List = .{ .SubMessage = {} } }),
        .chest_activities = fd(2, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildSummaryEvent = struct {
    offset: i64 = 0,
    count: i64 = 0,
    total: i64 = 0,
    guilds: ArrayList(com_ankama_dofus_server_game_protocol_common.GuildInformation),

    pub const _desc_table = .{
        .offset = fd(1, .{ .Varint = .Simple }),
        .count = fd(2, .{ .Varint = .Simple }),
        .total = fd(3, .{ .Varint = .Simple }),
        .guilds = fd(4, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildCreationStartedEvent = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildModificationStartedEvent = struct {
    can_change_name: bool = false,
    can_change_emblem: bool = false,

    pub const _desc_table = .{
        .can_change_name = fd(1, .{ .Varint = .Simple }),
        .can_change_emblem = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildCreationResultEvent = struct {
    result: com_ankama_dofus_server_game_protocol_common.SocialGroupOperationResult = @enumFromInt(0),

    pub const _desc_table = .{
        .result = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildModificationResultEvent = struct {
    result: com_ankama_dofus_server_game_protocol_common.SocialGroupOperationResult = @enumFromInt(0),

    pub const _desc_table = .{
        .result = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildInvitedEvent = struct {
    recruiter_name: ManagedString = .Empty,
    guild_information: ?com_ankama_dofus_server_game_protocol_common.GuildInformation = null,

    pub const _desc_table = .{
        .recruiter_name = fd(1, .String),
        .guild_information = fd(2, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildInvitationStateRecruiterEvent = struct {
    recruited_name: ManagedString = .Empty,
    invitation_state: com_ankama_dofus_server_game_protocol_common.SocialGroupInvitationState = @enumFromInt(0),
    recruited_id: i32 = 0,

    pub const _desc_table = .{
        .recruited_name = fd(1, .String),
        .invitation_state = fd(2, .{ .Varint = .Simple }),
        .recruited_id = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildInvitationStateRecruitedEvent = struct {
    invitation_state: com_ankama_dofus_server_game_protocol_common.SocialGroupInvitationState = @enumFromInt(0),

    pub const _desc_table = .{
        .invitation_state = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildGeneralInformationEvent = struct {
    abandoned_paddock: bool = false,
    level: i32 = 0,
    exp_level_floor: i64 = 0,
    experience: i64 = 0,
    exp_level_next_floor: i64 = 0,
    creation_date: ManagedString = .Empty,
    members_count: i32 = 0,
    score: i32 = 0,

    pub const _desc_table = .{
        .abandoned_paddock = fd(1, .{ .Varint = .Simple }),
        .level = fd(2, .{ .Varint = .Simple }),
        .exp_level_floor = fd(3, .{ .Varint = .Simple }),
        .experience = fd(4, .{ .Varint = .Simple }),
        .exp_level_next_floor = fd(5, .{ .Varint = .Simple }),
        .creation_date = fd(6, .String),
        .members_count = fd(7, .{ .Varint = .Simple }),
        .score = fd(8, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildPaddocksInformationEvent = struct {
    max_paddock_number: i32 = 0,
    paddock_information: ArrayList(com_ankama_dofus_server_game_protocol_common.PaddockInformation),

    pub const _desc_table = .{
        .max_paddock_number = fd(1, .{ .Varint = .Simple }),
        .paddock_information = fd(2, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildPaddockBoughtEvent = struct {
    paddock: ?com_ankama_dofus_server_game_protocol_common.PaddockInformation = null,

    pub const _desc_table = .{
        .paddock = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildPaddockRemovedEvent = struct {
    paddock_id: i64 = 0,

    pub const _desc_table = .{
        .paddock_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildMotdEvent = struct {
    motd: ?com_ankama_dofus_server_game_protocol_common.SocialNoticeInformation = null,

    pub const _desc_table = .{
        .motd = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildMotdSetErrorEvent = struct {
    @"error": com_ankama_dofus_server_game_protocol_common.SocialNoticeError = @enumFromInt(0),

    pub const _desc_table = .{
        .@"error" = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildBulletinEvent = struct {
    bulletin: ?com_ankama_dofus_server_game_protocol_common.SocialNoticeInformation = null,

    pub const _desc_table = .{
        .bulletin = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildBulletinSetErrorEvent = struct {
    @"error": com_ankama_dofus_server_game_protocol_common.SocialNoticeError = @enumFromInt(0),

    pub const _desc_table = .{
        .@"error" = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildCardErrorEvent = struct {
    guild_id: i32 = 0,

    pub const _desc_table = .{
        .guild_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildCardEvent = struct {
    info: ?com_ankama_dofus_server_game_protocol_common.GuildInformation = null,
    creation_date: i32 = 0,
    members: ArrayList(com_ankama_dofus_server_game_protocol_common.Character),

    pub const _desc_table = .{
        .info = fd(1, .{ .SubMessage = {} }),
        .creation_date = fd(2, .{ .Varint = .Simple }),
        .members = fd(3, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
