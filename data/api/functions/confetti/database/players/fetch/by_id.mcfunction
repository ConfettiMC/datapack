data modify storage confetti API.Player set value {}
data modify storage confetti Heap.Players set from storage confetti Database.Players
execute store result score #i api run data get storage confetti Heap.Players
execute if score #i api matches 1.. run function confetti:database/players/find_player/by_id
