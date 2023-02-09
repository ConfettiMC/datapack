execute if entity @s[tag=confetti.stored] run function confetti:database/players/store_player
execute if score @s cft.on_leave matches 1.. run function confetti:handle/on_leave

scoreboard players enable @s zzz.scroll_down
scoreboard players enable @s zzz.scroll_up
scoreboard players enable @s zzz.action
execute if score @s zzz.scroll_down matches 1.. run function confetti:handle/api/gui/action/scroll_down
execute if score @s zzz.scroll_up matches 1.. run function confetti:handle/api/gui/action/scroll_up
execute if score @s zzz.action matches 1.. run function confetti:handle/api/gui/action/click

function #confetti:thread/player
