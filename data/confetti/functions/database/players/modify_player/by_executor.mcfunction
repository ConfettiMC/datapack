execute store result score #Entry.UUID0 api run data get storage confetti Heap.Players[-1].UUID[0]
execute store result score #Entry.UUID1 api run data get storage confetti Heap.Players[-1].UUID[1]
execute store result score #Entry.UUID2 api run data get storage confetti Heap.Players[-1].UUID[2]
execute store result score #Entry.UUID3 api run data get storage confetti Heap.Players[-1].UUID[3]
data modify storage confetti API.Player set from storage confetti Heap.Players[-1]
execute if score #Entry.UUID0 api = #UUID0 api if score #Entry.UUID1 api = #UUID1 api if score #Entry.UUID2 api = #UUID2 api if score #Entry.UUID3 api = #UUID3 api run function #confetti:mixins/database/players/modifiers

scoreboard players remove #i api 1
data remove storage confetti Heap.Players[-1]
execute if score #i api matches 1.. run function confetti:database/players/find_player/by_executor
