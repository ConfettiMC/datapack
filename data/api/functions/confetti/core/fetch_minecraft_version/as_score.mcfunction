#! TODO: Use actual scoreboard method instead of relying on [as_storage]

execute unless score ^DataVersion api matches -2147483648..2147483647 store result score ^DataVersion api run data get entity @p DataVersion
function api:confetti/core/fetch_minecraft_version/as_data

execute store result score MC.Primary api run data get storage confetti API.MinecraftVersion[0]
execute store result score MC.Major api run data get storage confetti API.MinecraftVersion[1]
execute store result score MC.Minor api run data get storage confetti API.MinecraftVersion[2]
execute store result score MC.IsRelease api run data get storage confetti API.MinecraftVersion[3]
scoreboard players operation MC.DataVersion api = ^DataVersion api

execute store result score MC.Weight api run data get storage confetti API.MinecraftVersion[0] 1000000
execute store result score #Temp confetti run data get storage confetti API.MinecraftVersion[1] 1000
scoreboard players operation MC.Weight api += #Temp confetti
scoreboard players operation MC.Weight api += MC.Minor api
