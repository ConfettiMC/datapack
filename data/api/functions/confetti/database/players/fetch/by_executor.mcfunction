data modify storage confetti API.Player set value {}
data modify storage confetti Heap.Players set from storage confetti Database.Players
execute store result score #i api run data get storage confetti Heap.Players
execute store result score #UUID0 confetti run data get entity @s UUID[0]
execute store result score #UUID1 confetti run data get entity @s UUID[1]
execute store result score #UUID2 confetti run data get entity @s UUID[2]
execute store result score #UUID3 confetti run data get entity @s UUID[3]
execute if score #i api matches 1.. run function confetti:database/players/find_player/by_executor
