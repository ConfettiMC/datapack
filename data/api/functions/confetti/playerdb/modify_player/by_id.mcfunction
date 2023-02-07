data modify storage confetti Stack set from storage confetti PlayerDB
data modify storage confetti PlayerDB set value []
execute store result score #i api run data get storage confetti Stack
execute if score #i api matches 1.. run function confetti:playerdb/methods/modify_by_id
