data modify storage confetti API.Message set value {}
data modify storage confetti API.Message.Author set from storage confetti Stack[-1].Name
execute store result storage confetti Stack[-1].Id int 1 run scoreboard players add #Id confetti 1

execute store result score #From.Primary confetti run data get storage confetti Stack[-1].Minecraft.From[0] 1000000
execute store result score #From.Major confetti run data get storage confetti Stack[-1].Minecraft.From[1] 1000
execute store result score #From.Minor confetti run data get storage confetti Stack[-1].Minecraft.From[2]
execute store result score #To.Primary confetti run data get storage confetti Stack[-1].Minecraft.To[0] 1000000
execute store result score #To.Major confetti run data get storage confetti Stack[-1].Minecraft.To[1] 1000
execute store result score #To.Minor confetti run data get storage confetti Stack[-1].Minecraft.To[2]

scoreboard players operation #From.Primary confetti += #From.Major confetti
scoreboard players operation #From.Primary confetti += #From.Minor confetti
scoreboard players operation #To.Primary confetti += #To.Major confetti
scoreboard players operation #To.Primary confetti += #To.Minor confetti

scoreboard players set #Succeed confetti 0
execute if score #Minecraft.Weighted api >= #From.Primary confetti if score #Minecraft.Weighted api <= #To.Primary confetti run scoreboard players set #Succeed confetti 1
execute if score #Succeed confetti matches 1 run function confetti:loader/load_pack
execute if score #Succeed confetti matches 0 run function confetti:loader/invalid_minecraft_version

data modify storage confetti Datapacks append from storage confetti Stack[-1]
data remove storage confetti Stack[-1]
scoreboard players remove #StackIdx confetti 1
execute if score #StackIdx confetti matches 1.. run function confetti:loader/loop
