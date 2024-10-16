// Code generated by protoc-gen-zig
///! package com.ankama.dofus.server.game.protocol.guild.recruitment
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;
/// import package com.ankama.dofus.server.game.protocol.common
const com_ankama_dofus_server_game_protocol_common = @import("../common.pb.zig");

pub const GuildRecruitmentUpdateRequest = struct {
    recruitment: ?com_ankama_dofus_server_game_protocol_common.GuildRecruitmentInformation = null,

    pub const _desc_table = .{
        .recruitment = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildRecruitmentEvent = struct {
    recruitment: ?com_ankama_dofus_server_game_protocol_common.GuildRecruitmentInformation = null,

    pub const _desc_table = .{
        .recruitment = fd(1, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GuildRecruitmentInvalidateEvent = struct {
    pub const _desc_table = .{};

    pub usingnamespace protobuf.MessageMixins(@This());
};
