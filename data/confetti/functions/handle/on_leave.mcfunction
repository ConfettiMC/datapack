scoreboard players reset @s cft.on_leave
function #confetti:event/on_leave

scoreboard players operation ^Id api = @s confetti_db
function api:confetti/database/players/fetch/by_id

function api:confetti/core/fetch_player_name
execute store success score #Success confetti run data modify storage confetti API.Player.Name set from storage confetti API.PlayerName
execute if score #Success confetti matches 1 run function confetti:handle/on_leave/rename
