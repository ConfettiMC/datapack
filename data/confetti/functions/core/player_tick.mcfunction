execute if entity @s[tag=!confetti.stored] run function confetti:playerdb/store_player
execute if score @s confetti_leave matches 1.. run function confetti:core/handle/player_leave
