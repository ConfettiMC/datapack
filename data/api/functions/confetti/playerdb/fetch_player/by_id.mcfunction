data modify storage confetti API.Player set value {}
data modify storage confetti Stack set from storage confetti PlayerDB
execute store result score #i api run data get storage confetti Stack
execute if score #i api matches 1.. run function confetti:playerdb/methods/search_by_id
