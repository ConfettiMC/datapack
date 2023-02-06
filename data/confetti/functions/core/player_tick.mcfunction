execute if entity @s[tag=!confetti.stored] run function confetti:playerdb/store_player
execute if score @s confetti_leave matches 1.. run function confetti:core/handle/player_leave

scoreboard players enable @s zzz.scroll_down
scoreboard players enable @s zzz.scroll_up
scoreboard players enable @s zzz.action
execute if score @s zzz.scroll_down matches 1.. run function confetti:callback/gui/scroll_down
execute if score @s zzz.scroll_up matches 1.. run function confetti:callback/gui/scroll_up
execute if score @s zzz.action matches 1.. run function confetti:callback/gui/action
