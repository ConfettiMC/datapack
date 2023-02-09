scoreboard players set Modifier confetti 1
scoreboard players operation ^Id api = @s confetti_db
function api:confetti/database/players/modify/by_id

scoreboard players set @s confetti_window 0
scoreboard players set @s confetti_scroll 0
function api:confetti/gui/render_window

playsound ui.button.click master @s ~ ~ ~ 1
