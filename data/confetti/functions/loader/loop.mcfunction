# Setup API call author and type for future errors
data modify storage confetti API.Call set value {Type: "Error"}
data modify storage confetti API.Call.Pack set from storage confetti Loader[-1].Name

# Store required Minecraft versions, weight them and compare
execute store result score #From.Weight confetti store result score #From.Primary confetti run data get storage confetti Loader[-1].Minecraft.From[0]
execute store result score #From.Weight2 confetti store result score #From.Major confetti run data get storage confetti Loader[-1].Minecraft.From[1]
execute store result score #From.Minor confetti run data get storage confetti Loader[-1].Minecraft.From[2]
scoreboard players operation #From.Weight confetti *= #10000000 confetti
scoreboard players operation #From.Weight2 confetti *= #10000 confetti
scoreboard players operation #From.Weight confetti += #From.Weight2 confetti
scoreboard players operation #From.Weight confetti += #From.Minor confetti

execute store result score #To.Weight confetti store result score #To.Primary confetti run data get storage confetti Loader[-1].Minecraft.To[0]
execute store result score #To.Weight2 confetti store result score #To.Major confetti run data get storage confetti Loader[-1].Minecraft.To[1]
execute store result score #To.Minor confetti run data get storage confetti Loader[-1].Minecraft.To[2]
scoreboard players operation #To.Weight confetti *= #10000000 confetti
scoreboard players operation #To.Weight2 confetti *= #10000 confetti
scoreboard players operation #To.Weight confetti += #To.Weight2 confetti
scoreboard players operation #To.Weight confetti += #To.Minor confetti

scoreboard players set #InRange confetti 0
execute if score MC.Weighted api >= #From.Weight confetti if score MC.Weighted api <= #To.Weight confetti run function confetti:loader/validate
execute if score #InRange confetti matches 0 run function confetti:loader/error/unsupported_mc_version

# Move into Datapack list and iterate further
scoreboard players remove #i confetti 1
data modify storage confetti Datapacks append from storage confetti Loader[-1]
data remove storage confetti Loader[-1]
execute if score #i confetti matches 1.. run function confetti:loader/loop
