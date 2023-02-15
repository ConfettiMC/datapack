data modify storage confetti API.GameRule set value {Namespace: "", Name: ""}
data modify storage confetti API.GameRule.Namespace set from storage confetti Heap.Loader[-1].Id
data modify storage confetti API.GameRule.Id set from storage confetti Heap.GameRules[-1].Id
function #confetti:mixins/gamerule/getters
scoreboard players reset Value api
execute unless score Value api matches -2147483648..2147483647 run function confetti:loader/gamerules/set_default

# Iterate
scoreboard players remove #Heap.GameRules confetti 1
data remove storage confetti Heap.GameRules[-1]
execute if score #Heap.GameRules confetti matches 1.. run function confetti:loader/gamerules/loop_gamerules
