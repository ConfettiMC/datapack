#! TODO: Use actual scoreboard method instead of relying on [as_storage]

function api:confetti/convert/to_minecraft_version/as_storage

execute store result score #Minecraft.Primary api run data get storage confetti Minecraft[0]
execute store result score #Minecraft.Major api run data get storage confetti Minecraft[1]
execute store result score #Minecraft.Minor api run data get storage confetti Minecraft[2]
execute store result score #Minecraft.IsRelease api run data get storage confetti Minecraft[3]
scoreboard players operation #Minecraft.DataVersion api = #DataVersion api

execute store result score #Minecraft.Weighted api run data get storage confetti Minecraft[0] 1000000
execute store result score #Temp confetti run data get storage confetti Minecraft[1] 1000
scoreboard players operation #Minecraft.Weighted api += #Temp confetti
scoreboard players operation #Minecraft.Weighted api += #Minecraft.Minor api
