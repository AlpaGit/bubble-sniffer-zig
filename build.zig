const std = @import("std");
const protobuf = @import("protobuf");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
	
    const protobuf_dep = b.dependency("protobuf", .{
        .target = target,
        .optimize = optimize,
    });

    const exe = b.addExecutable(.{
        .name = "bubble-sniffer-zig",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
	
    exe.addObjectFile(b.path("staging/WinDivert.lib"));
    exe.linkLibC();
    exe.root_module.addImport("protobuf", protobuf_dep.module("protobuf"));

    b.installArtifact(exe);

    const run_cmd = b.addRunArtifact(exe);

    run_cmd.step.dependOn(b.getInstallStep());

    if (b.args) |args| {
        run_cmd.addArgs(args);
    }
	
    const gen_proto_game = b.step("gen-proto-game", "generates zig files from protocol buffer definitions");

    const protoc_step_game = protobuf.RunProtocStep.create(b, protobuf_dep.builder, target, .{
        // out directory for the generated zig files
        .destination_directory = b.path("src/proto"),
        .source_files = &.{
            "account.proto",
            "achievement.proto",
            "admin_console.proto",
            "alliance_conquest.proto",
            "alliance_information.proto",
            "alliance_member.proto",
            "alliance_rank.proto",
            "alliance_recruitment.proto",
            "alteration.proto",
            "anomaly.proto",
            "appearance.proto",
            "area.proto",
            "arena.proto",
            "atlas.proto",
            "bak.proto",
            "basic.proto",
            "bid_activity.proto",
            "breach.proto",
            "challenge.proto",
            "character.proto",
            "character_management.proto",
            "chat.proto",
            "choice.proto",
            "client_verification.proto",
            "common.proto",
            "connection.proto",
            "contact.proto",
            "context.proto",
            "cosmetic.proto",
            "debt.proto",
            "debug.proto",
            "dialog.proto",
            "document.proto",
            "element.proto",
            "emote.proto",
            "exchange.proto",
            "fight.proto",
            "fight_preparation.proto",
            "finish_move.proto",
            "game_action.proto",
            "game_message.proto",
            "gamemap.proto",
            "guild_application.proto",
            "guild_chest.proto",
            "guild_house.proto",
            "guild_information.proto",
            "guild_member.proto",
            "guild_rank.proto",
            "guild_recruitment.proto",
            "haapi.proto",
            "haven_bag.proto",
            "house.proto",
            "interactive_element.proto",
            "inventory.proto",
            "job.proto",
            "living_object.proto",
            "moderation.proto",
            "mount.proto",
            "notification.proto",
            "npc.proto",
            "paddock.proto",
            "party.proto",
            "preset.proto",
            "prism.proto",
            "quest.proto",
            "report.proto",
            "roleplay.proto",
            "script.proto",
            "security.proto",
            "server.proto",
            "shop.proto",
            "social.proto",
            "spell.proto",
            "suggestion.proto",
            "symbiont.proto",
            "tag_storage.proto",
            "taxcollector.proto",
            "teleportation.proto",
            "tinsel.proto",
            "treasure_hunt.proto",
            "ui.proto",
        },
        .include_directories = &.{
            "protocol/game",
        },
    });

    gen_proto_game.dependOn(&protoc_step_game.step);

    const gen_proto_connection = b.step("gen-proto-connection", "generates zig files from protocol buffer definitions");

    const protoc_step_connection = protobuf.RunProtocStep.create(b, protobuf_dep.builder, target, .{
        // out directory for the generated zig files
        .destination_directory = b.path("src/proto"),
        .source_files = &.{
            "protocol/connection/login_message.proto",
        },
        .include_directories = &.{
        },
    });

    gen_proto_connection.dependOn(&protoc_step_connection.step);

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);


    const exe_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const run_exe_unit_tests = b.addRunArtifact(exe_unit_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_exe_unit_tests.step);
}
