// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.haven.bag
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;
/// import package com.ankama.dofus.server.game.protocol.common
const com_ankama_dofus_server_game_protocol_common = @import("../common.pb.zig");

pub const HavenBagEnterRequest = struct {
    owner: i64 = 0,

    pub const _desc_table = .{
        .owner = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagChangeRoomRequest = struct {
    room_id: i32 = 0,

    pub const _desc_table = .{
        .room_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagExitRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagEditRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagEditCancelRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagThemeChangeRequest = struct {
    theme: i32 = 0,

    pub const _desc_table = .{
        .theme = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagFurnitureOpenRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagFurnitureRequest = struct {
    furniture: ArrayList(Element),

    pub const _desc_table = .{
        .furniture = fd(1, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagFurnitureCloseRequest = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagKickRequest = struct {
    guest_id: i64 = 0,

    pub const _desc_table = .{
        .guest_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagPermissionsUpdateRequest = struct {
    permissions: i32 = 0,

    pub const _desc_table = .{
        .permissions = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagInvitationAnswerRequest = struct {
    accepted: bool = false,

    pub const _desc_table = .{
        .accepted = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagInvitationRequest = struct {
    guest_id: i64 = 0,

    pub const _desc_table = .{
        .guest_id = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagRoomUpdateEvent = struct {
    action: HavenBagRoomAction = @enumFromInt(0),
    preview: ArrayList(HavenBagRoomPreview),

    pub const _desc_table = .{
        .action = fd(1, .{ .Varint = .Simple }),
        .preview = fd(2, .{ .List = .{ .SubMessage = {} } }),
    };

    pub const HavenBagRoomAction = enum(i32) {
        HAVEN_BAG_ROOM_DISPATCH = 0,
        HAVEN_BAG_ROOM_UPDATE = 1,
        _,
    };

    pub const HavenBagRoomPreview = struct {
        room_id: i32 = 0,
        theme_id: i32 = 0,

        pub const _desc_table = .{
            .room_id = fd(1, .{ .Varint = .Simple }),
            .theme_id = fd(2, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagPackListEvent = struct {
    packs_id: ArrayList(i32),

    pub const _desc_table = .{
        .packs_id = fd(1, .{ .PackedList = .{ .Varint = .Simple } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagEditStartEvent = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagEditFinishedEvent = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagDailyLotteryEvent = struct {
    result: DailyLotteryResult = @enumFromInt(0),
    game_action_id: ?i64 = null,

    pub const _desc_table = .{
        .result = fd(1, .{ .Varint = .Simple }),
        .game_action_id = fd(2, .{ .Varint = .Simple }),
    };

    pub const DailyLotteryResult = enum(i32) {
        HAVEN_BAG_DAILY_LOTTERY_OK = 0,
        HAVEN_BAG_DAILY_LOTTERY_ALREADY_USED = 1,
        HAVEN_BAG_DAILY_LOTTERY_ERROR = 2,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagFurnitureEvent = struct {
    furniture: ArrayList(Element),

    pub const _desc_table = .{
        .furniture = fd(1, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagPermissionsUpdateEvent = struct {
    permissions: i32 = 0,

    pub const _desc_table = .{
        .permissions = fd(1, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagInvitationClosedEvent = struct {
    host_information: ?com_ankama_dofus_server_game_protocol_common.Character = null,

    pub const _desc_table = .{
        .host_information = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagInvitationEvent = struct {
    guest_information: ?com_ankama_dofus_server_game_protocol_common.Character = null,
    accepted: bool = false,

    pub const _desc_table = .{
        .guest_information = fd(1, .{ .SubMessage = {} }),
        .accepted = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const HavenBagInvitationOfferedEvent = struct {
    host_information: ?com_ankama_dofus_server_game_protocol_common.Character = null,
    time_before_cancel: i64 = 0,

    pub const _desc_table = .{
        .host_information = fd(1, .{ .SubMessage = {} }),
        .time_before_cancel = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const Element = struct {
    cell_id: i32 = 0,
    element_id: i32 = 0,
    orientation: i32 = 0,

    pub const _desc_table = .{
        .cell_id = fd(1, .{ .Varint = .Simple }),
        .element_id = fd(2, .{ .Varint = .Simple }),
        .orientation = fd(3, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
