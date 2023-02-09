data modify storage confetti Heap.Players set from storage confetti Database.Players
data modify storage confetti Heap.NewPlayers set value []
execute store result score #i api run data get storage confetti Heap.Players
execute store result score #UUID0 api run data get entity @s UUID[0]
execute store result score #UUID1 api run data get entity @s UUID[1]
execute store result score #UUID2 api run data get entity @s UUID[2]
execute store result score #UUID3 api run data get entity @s UUID[3]
execute if score #i api matches 1.. run function confetti:database/players/remove_player/loop
data modify storage confetti Database.Players set from storage confetti Heap.NewPlayers
