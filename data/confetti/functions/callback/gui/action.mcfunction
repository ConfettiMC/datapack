scoreboard players operation ^Id api = @s confetti_db
function api:confetti/playerdb/fetch_player/by_id
data modify storage confetti API.Window set from storage confetti API.Player.Confetti.GUI.Id
scoreboard players operation Action confetti = @s zzz.action
scoreboard players remove Action confetti 1
scoreboard players operation Action confetti += @s confetti_scroll
function #confetti:gui/on/action

scoreboard players reset @s zzz.action
