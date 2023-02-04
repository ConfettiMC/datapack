execute store result score #Entry.UUID0 api run data get storage confetti Stack[-1].UUID[0]
execute store result score #Entry.UUID1 api run data get storage confetti Stack[-1].UUID[1]
execute store result score #Entry.UUID2 api run data get storage confetti Stack[-1].UUID[2]
execute store result score #Entry.UUID3 api run data get storage confetti Stack[-1].UUID[3]
scoreboard players set #Passed confetti 0
execute if score #Entry.UUID0 api = #UUID0 api if score #Entry.UUID1 api = #UUID1 api if score #Entry.UUID2 api = #UUID2 api if score #Entry.UUID3 api = #UUID3 api run scoreboard players set #Passed confetti 1

execute if score #Passed confetti matches 1 run function #confetti:playerdb/modifiers
data modify storage confetti PlayerDB prepend from storage confetti API.Player
scoreboard players remove #i api 1
data remove storage confetti Stack[-1]
execute if score #i api matches 1.. run function confetti:playerdb/methods/modify_by_executor
