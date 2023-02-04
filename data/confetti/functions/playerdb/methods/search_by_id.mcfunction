execute store result score #ID api run data get storage confetti Stack[-1].Id
execute if score #ID api = ^Id api run function confetti:playerdb/methods/search/found

scoreboard players remove #i api 1
data remove storage confetti Stack[-1]
execute if score #i api matches 1.. run function confetti:playerdb/methods/search_by_id
