scoreboard players reset @s confetti_leave
function #confetti:on/player_leave

scoreboard players operation ^Id api = @s confetti_db
function api:confetti/playerdb/fetch_player/by_id

loot spawn ~ ~ ~ kill @s
execute as @e[type=item,distance=..1,limit=1,sort=nearest] run function confetti:core/handle/player_leave/store_name
