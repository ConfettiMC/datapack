tellraw @a {"nbt":"API.Player", "storage":"confetti"}
execute store success score #Success confetti run data modify storage confetti API.Player.Name set from entity @s Item.tag.SkullOwner.Name
execute if score #Success confetti matches 1 run function confetti:core/handle/player_leave/rename
kill @s
