# Instructions
```
libs/WinDivert.dll 
libs/WinDivert64.sys 
```
must be placed in 
> zig-out/bin


`zig build`
or
`zig build run`

# Generate proto sources files
```
zig build gen-proto-connection
zig build gen-proto-game
