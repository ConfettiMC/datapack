#! TODO: Use actual scoreboard method instead of relying on [as_storage]

function api:confetti/fetch/minecraft_version/as_storage

execute store result score MC.Primary api run data get storage confetti API.MinecraftVersion[0]
execute store result score MC.Major api run data get storage confetti API.MinecraftVersion[1]
execute store result score MC.Minor api run data get storage confetti API.MinecraftVersion[2]
execute store result score MC.IsRelease api run data get storage confetti API.MinecraftVersion[3]
scoreboard players operation MC.DataVersion api = ^DataVersion api

execute store result score MC.Weighted api run data get storage confetti API.MinecraftVersion[0] 10000000
execute store result score #Temp confetti run data get storage confetti API.MinecraftVersion[1] 10000
scoreboard players operation MC.Weighted api += #Temp confetti
scoreboard players operation MC.Weighted api += MC.Minor api
