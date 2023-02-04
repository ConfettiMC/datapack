data modify storage confetti API.Player set from storage confetti Stack[-1]
execute store result score #ID api run data get storage confetti API.Player.Id
execute if score #ID api = ^Id api run function #confetti:playerdb/modifiers

data modify storage confetti PlayerDB prepend from storage confetti API.Player
scoreboard players remove #i api 1
data remove storage confetti Stack[-1]
execute if score #i api matches 1.. run function confetti:playerdb/methods/modify_by_id
