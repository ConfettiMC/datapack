execute store result score ^Id api store result score @s confetti_db run scoreboard players add #i confetti_db 1
function confetti:playerdb/delete_player

data modify storage confetti PlayerDB append value {Id: -1, UUID: [I;], Name: '"<Unknown>"'}
execute store result storage confetti PlayerDB[-1].Id int 1 run scoreboard players get @s confetti_db
data modify storage confetti PlayerDB[-1].UUID set from entity @s UUID
loot spawn ~ 1024 ~ kill @s
execute positioned ~ 1024 ~ as @e[type=item,distance=..1,limit=1,sort=nearest] run function confetti:playerdb/store_player_name
tag @s add confetti.stored
