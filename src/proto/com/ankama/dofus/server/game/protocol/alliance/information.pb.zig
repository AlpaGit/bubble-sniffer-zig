// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.alliance.information
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;
/// import package com.ankama.dofus.server.game.protocol.common
const com_ankama_dofus_server_game_protocol_common = @import("../common.pb.zig");

pub const AllianceCreationValidRequest = struct {
    alliance_name: ManagedString = .Empty,
    alliance_tag: ManagedString = .Empty,
    alliance_emblem: ?com_ankama_dofus_server_game_protocol_common.SocialEmblem = null,

    pub const _desc_table = .{
        .alliance_name = fd(1, .String),
        .alliance_tag = fd(2, .String),
        .alliance_emblem = fd(3, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceEmblemModificationValidRequest = struct {
    alliance_emblem: ?com_ankama_dofus_server_game_protocol_common.SocialEmblem = null,

    pub const _desc_table = .{
        .alliance_emblem = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceNameAndTagModificationValidRequest = struct {
    alliance_name: ManagedString = .Empty,
    alliance_tag: ManagedString = .Empty,

    pub const _desc_table = .{
        .alliance_name = fd(1, .String),
        .alliance_tag = fd(2, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceModificationValidRequest = struct {
    alliance_name: ManagedString = .Empty,
    alliance_tag: ManagedString = .Empty,
    alliance_emblem: ?com_ankama_dofus_server_game_protocol_common.SocialEmblem = null,

    pub const _desc_table = .{
        .alliance_name = fd(1, .String),
        .alliance_tag = fd(2, .String),
        .alliance_emblem = fd(3, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceMemberStartWarningOnConnectionRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceMemberStopWarningOnConnectionRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceCreationStartedEvent = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceModificationStartedEvent = struct {
    can_change_name: bool = false,
    can_change_tag: bool = false,
    can_change_emblem: bool = false,

    pub const _desc_table = .{
        .can_change_name = fd(1, .{ .Varint = .Simple }),
        .can_change_tag = fd(2, .{ .Varint = .Simple }),
        .can_change_emblem = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceCreationResultEvent = struct {
    result: com_ankama_dofus_server_game_protocol_common.SocialGroupOperationResult = @enumFromInt(0),

    pub const _desc_table = .{
        .result = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceModificationResultEvent = struct {
    result: com_ankama_dofus_server_game_protocol_common.SocialGroupOperationResult = @enumFromInt(0),

    pub const _desc_table = .{
        .result = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceInsiderInformationRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceFactsRequest = struct {
    alliance_uuid: ManagedString = .Empty,

    pub const _desc_table = .{
        .alliance_uuid = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceSummaryRequest = struct {
    offset: i64 = 0,
    count: i64 = 0,
    filter_type: DirectoryTextFilter = @enumFromInt(0),
    text_filer: ManagedString = .Empty,
    hide_full_filter: bool = false,
    following_alliance_criteria: bool = false,
    criterion_filter: ArrayList(i32),
    sort_type: AllianceSummarySort = @enumFromInt(0),
    sort_descending: bool = false,
    languages_filter: ArrayList(i32),
    recruitment_type_filter: ArrayList(com_ankama_dofus_server_game_protocol_common.SocialRecruitmentType),
    min_player_level_filter: i32 = 0,
    max_player_level_filter: i32 = 0,

    pub const _desc_table = .{
        .offset = fd(1, .{ .Varint = .Simple }),
        .count = fd(2, .{ .Varint = .Simple }),
        .filter_type = fd(3, .{ .Varint = .Simple }),
        .text_filer = fd(4, .String),
        .hide_full_filter = fd(5, .{ .Varint = .Simple }),
        .following_alliance_criteria = fd(6, .{ .Varint = .Simple }),
        .criterion_filter = fd(7, .{ .PackedList = .{ .Varint = .Simple } }),
        .sort_type = fd(8, .{ .Varint = .Simple }),
        .sort_descending = fd(9, .{ .Varint = .Simple }),
        .languages_filter = fd(10, .{ .PackedList = .{ .Varint = .Simple } }),
        .recruitment_type_filter = fd(11, .{ .List = .{ .Varint = .Simple } }),
        .min_player_level_filter = fd(12, .{ .Varint = .Simple }),
        .max_player_level_filter = fd(13, .{ .Varint = .Simple }),
    };

    pub const DirectoryTextFilter = enum(i32) {
        ALLIANCE_SEARCH_DEFAULT_FILTER = 0,
        ALLIANCE_SEARCH_NAME_FILTER = 1,
        ALLIANCE_SEARCH_TAG_FILTER = 2,
        _,
    };

    pub const AllianceSummarySort = enum(i32) {
        SORT_BY_ALLIANCE_NAME = 0,
        SORT_BY_ALLIANCE_TAG = 1,
        SORT_BY_NB_TERRITORIES = 2,
        SORT_BY_ALLIANCE_NB_MEMBERS = 3,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceInsiderInformationEvent = struct {
    information: ?com_ankama_dofus_server_game_protocol_common.AllianceInformation = null,
    members: ArrayList(com_ankama_dofus_server_game_protocol_common.AllianceMemberInformation),
    prisms: ArrayList(com_ankama_dofus_server_game_protocol_common.PrismLocalizedInformation),
    tax_collectors: ArrayList(com_ankama_dofus_server_game_protocol_common.TaxCollectorInformation),

    pub const _desc_table = .{
        .information = fd(1, .{ .SubMessage = {} }),
        .members = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .prisms = fd(3, .{ .List = .{ .SubMessage = {} } }),
        .tax_collectors = fd(4, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceFactsErrorEvent = struct {
    alliance_uuid: ManagedString = .Empty,

    pub const _desc_table = .{
        .alliance_uuid = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceFactsEvent = struct {
    alliance_information: ?com_ankama_dofus_server_game_protocol_common.AllianceInformation = null,
    members: ArrayList(com_ankama_dofus_server_game_protocol_common.Character),
    controlled_subarea_ids: ArrayList(i32),
    leader_id: i64 = 0,
    leader_name: ManagedString = .Empty,

    pub const _desc_table = .{
        .alliance_information = fd(1, .{ .SubMessage = {} }),
        .members = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .controlled_subarea_ids = fd(3, .{ .PackedList = .{ .Varint = .Simple } }),
        .leader_id = fd(4, .{ .Varint = .Simple }),
        .leader_name = fd(5, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceSummaryEvent = struct {
    offset: i64 = 0,
    count: i64 = 0,
    total: i64 = 0,
    alliances: ArrayList(com_ankama_dofus_server_game_protocol_common.AllianceInformation),

    pub const _desc_table = .{
        .offset = fd(1, .{ .Varint = .Simple }),
        .count = fd(2, .{ .Varint = .Simple }),
        .total = fd(3, .{ .Varint = .Simple }),
        .alliances = fd(4, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceMotdSetRequest = struct {
    content: ManagedString = .Empty,

    pub const _desc_table = .{
        .content = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceMotdEvent = struct {
    motd_info: ?com_ankama_dofus_server_game_protocol_common.SocialNoticeInformation = null,

    pub const _desc_table = .{
        .motd_info = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceMotdSetErrorEvent = struct {
    reason: com_ankama_dofus_server_game_protocol_common.SocialNoticeError = @enumFromInt(0),

    pub const _desc_table = .{
        .reason = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceBulletinSetRequest = struct {
    content: ManagedString = .Empty,

    pub const _desc_table = .{
        .content = fd(1, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceBulletinEvent = struct {
    bulletin_info: ?com_ankama_dofus_server_game_protocol_common.SocialNoticeInformation = null,

    pub const _desc_table = .{
        .bulletin_info = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const AllianceBulletinSetErrorEvent = struct {
    reason: com_ankama_dofus_server_game_protocol_common.SocialNoticeError = @enumFromInt(0),

    pub const _desc_table = .{
        .reason = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
