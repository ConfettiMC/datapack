scoreboard players operation ^Id api = @s confetti_db
function api:confetti/database/players/fetch/by_id

execute unless score @s confetti_window matches 0 run function confetti:handle/api/gui/find_window
function confetti:handle/api/gui/print
