data modify storage confetti API.Player set value {}
data modify storage confetti Stack set from storage confetti PlayerDB
execute store result score #i api run data get storage confetti Stack
execute store result score #UUID0 api run data get entity @s UUID[0]
execute store result score #UUID1 api run data get entity @s UUID[1]
execute store result score #UUID2 api run data get entity @s UUID[2]
execute store result score #UUID3 api run data get entity @s UUID[3]
execute if score #i api matches 1.. run function confetti:playerdb/methods/search_by_uuid
