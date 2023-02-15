data modify storage confetti Logger.Name set from storage confetti Heap.Loader[-1].Name

# Check Minecraft version
execute store result score #MCFrom.Weight confetti run data get storage confetti Heap.Loader[-1].Minecraft.From[0] 1000000
execute store result score #MCFrom.1 confetti run data get storage confetti Heap.Loader[-1].Minecraft.From[1] 1000
execute store result score #MCFrom.2 confetti run data get storage confetti Heap.Loader[-1].Minecraft.From[2]
execute store result score #MCTo.Weight confetti run data get storage confetti Heap.Loader[-1].Minecraft.To[0] 1000000
execute store result score #MCTo.1 confetti run data get storage confetti Heap.Loader[-1].Minecraft.To[1] 1000
execute store result score #MCTo.2 confetti run data get storage confetti Heap.Loader[-1].Minecraft.To[2]
scoreboard players operation #MCFrom.Weight confetti += #MCFrom.1 confetti
scoreboard players operation #MCFrom.Weight confetti += #MCFrom.2 confetti
scoreboard players operation #MCTo.Weight confetti += #MCTo.1 confetti
scoreboard players operation #MCTo.Weight confetti += #MCTo.2 confetti
scoreboard players set Passed confetti 0
execute if score MC.Weight api >= #MCFrom.Weight confetti if score MC.Weight api <= #MCTo.Weight confetti run scoreboard players set Passed confetti 1
execute if score Passed confetti matches 0 run function confetti:loader/errors/unsupported_minecraft_version
data remove storage confetti Heap.Loader[-1].Minecraft

# Check Pack dependencies
execute store result score #Heap.Dependencies confetti run data get storage confetti Heap.Loader[-1].Dependencies
execute if score #Heap.Dependencies confetti matches 1.. run function confetti:loader/dependencies/loop_dependencies

# Default gamerules
data modify storage confetti Heap.GameRules set from storage confetti Heap.Loader[-1].GameRules
execute store result score #Heap.GameRules confetti run data get storage confetti Heap.GameRules
execute if score #Heap.GameRules confetti matches 1.. run function confetti:loader/gamerules/loop_gamerules

# Iterate
scoreboard players remove #Heap.Loader confetti 1
data modify storage confetti Datapacks append from storage confetti Heap.Loader[-1]
data remove storage confetti Heap.Loader[-1]
execute if score #Heap.Loader confetti matches 1.. run function confetti:loader/loop_packs
