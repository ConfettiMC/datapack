data modify storage confetti Heap.Players set from storage confetti Database.Players
data modify storage confetti Database.Players set value []
execute store result score #i api run data get storage confetti Heap.Players
execute if score #i api matches 1.. run function confetti:database/players/modify_player/by_id
