execute store result score ^Id api store result score @s confetti_db run scoreboard players add #Players confetti_db 1
function confetti:database/players/remove_player

function api:confetti/core/fetch_player_name
data modify storage confetti Database.Players append value {Id: -1, UUID: [I;], Name: '"<Unknown>"'}
execute store result storage confetti Database.Players[-1].Id int 1 run scoreboard players get @s confetti_db
data modify storage confetti Database.Players[-1].UUID set from entity @s UUID
data modify storage confetti Database.Players[-1].Name set from storage confetti API.PlayerName

tag @s add confetti.stored
