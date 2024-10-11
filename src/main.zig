const wd = @import("windivert/windivert.zig");
const bindings = @import("windivert/bindings.zig");
const std = @import("std");
//const protobuf = @import("protobuf");

const print = std.debug.print;
const net = std.net;
const connection_protocol = @import("proto/com/ankama/dofus/server/connection/protocol.pb.zig");

pub fn main() anyerror!void {
    var divert = try wd.WinDivert.open("tcp.PayloadLength > 0", .network, 405, .sniff);
    defer divert.close();

    var buffer: [40 + 0xFFFF]u8 = undefined;
    while (true) {
        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        const allocator = gpa.allocator();

        const result = try divert.receive(&buffer);

        // print("Packet len: {}\n", .{result.address});

        const parsed_packet = try wd.parsePacket(&buffer);
        const tcp_header = parsed_packet.tcp_header orelse unreachable;


        if(parsed_packet.payload.len < 2) {
            _ = try divert.send(result.buffer, result.address);
            continue;
        }

        const from_client = tcp_header.dst_port == 5555;

        if (tcp_header.dst_port == 5555 or tcp_header.src_port == 5555) {
            const b = parsed_packet.payload[1..];
            //print("Parsed Packet: {} port / len: {}\n", .{tcp_header.dst_port, b.len});

            const proto_packet:connection_protocol.LoginMessage = connection_protocol.LoginMessage.decode(b, allocator) catch |err| {
                std.debug.print("Failed to decode packet: {}\n", .{err});
                _ = try divert.send(result.buffer, result.address);
                continue;
            };

            if(proto_packet.content == null) {
                std.debug.print("Failed to decode packet\n", .{});
                continue;
            }

            switch(proto_packet.content.?)
            {
                .response => |response| {
                    switch (response.content.?) {
                        .pong => {
                            logPacket("pong", from_client);
                        },
                        .identification => {
                            logPacket("identification", from_client);
                        },
                        .selectServer => {
                            logPacket("selectServer", from_client);
                        },
                        .forceAccount => {
                            logPacket("forceAccount", from_client);
                        },
                        .friend_list => {
                            logPacket("friend_list_response", from_client);
                        },
                        .acquaintance_servers_response => {
                            logPacket("acquaintance_servers_response", from_client);
                        },
                    }
                },
                .event => |event| {
                    switch (event.content.?) {
                        .server => {
                            logPacket("server_event", from_client);
                        },
                        .update_server_event => {
                            logPacket("update_server_event", from_client);
                        },
                    }
                },
                .request => |request| {
                    switch (request.content.?) {
                        .ping => {
                            logPacket("ping", from_client);
                        },
                        .identification => {
                            logPacket("identification", from_client);
                        },
                        .selectServer => {
                            logPacket("selectServer", from_client);
                        },
                        .forceAccount => {
                            logPacket("forceAccount", from_client);
                        },
                        .releaseAccount => {
                            logPacket("releaseAccount", from_client);
                        },
                        .friend_list_request => {
                            logPacket("friend_list_request", from_client);
                        },
                        .acquaintance_servers_request => {
                            logPacket("acquaintance_servers_request", from_client);
                        },
                    }
                }
            }

            //std.debug.print("Successfully decoded packet {?}\r\n", .{proto_packet.content});
        }
        
        _ = try divert.send(result.buffer, result.address);
    }

}

fn logPacket(str:[]const u8, from_client: bool) void {
    if(from_client) {
        logReqPacket(str);
    } else {
        logRecvPacket(str);
    }
}

fn logRecvPacket(str:[]const u8) void {
    print("[RCV]: {s}\n", .{str});
}

fn logReqPacket(str:[]const u8) void {
    print("[SND]: {s}\n", .{str});
}