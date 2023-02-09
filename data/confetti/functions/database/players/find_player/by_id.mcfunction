execute store result score #ID api run data get storage confetti Heap.Players[-1].Id
execute if score #ID api = ^Id api run function confetti:database/players/find_player/found

scoreboard players remove #i api 1
data remove storage confetti Heap.Players[-1]
execute if score #i api matches 1.. run function confetti:database/players/find_player/by_id
