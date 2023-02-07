scoreboard players set Modifier confetti 0
scoreboard players operation ^Id api = @s confetti_db
function api:confetti/playerdb/modify_player/by_id

scoreboard players set @s confetti_window 0
scoreboard players set @s confetti_scroll 0
function confetti:callback/gui/render_window

playsound ui.button.click master @s ~ ~ ~ 1
