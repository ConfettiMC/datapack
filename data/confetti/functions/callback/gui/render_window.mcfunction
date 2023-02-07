scoreboard players operation ^Id api = @s confetti_db
function api:confetti/playerdb/fetch_player/by_id

execute unless score @s confetti_window matches 0 run function confetti:callback/gui/render_window/find_window
function confetti:callback/gui/render_window/print
