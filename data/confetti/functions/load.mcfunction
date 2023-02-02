data modify storage confetti Framework set value {Version: [B; 1b, 0b, 0b]}

# Collect datapack list
data modify storage confetti Datapacks set value []
function #confetti:load

# Process datapacks
scoreboard players set #Id confetti 0
data modify storage confetti Stack set from storage confetti Datapacks
data modify storage confetti Datapacks set value []
execute store result score #StackIdx confetti run data get storage confetti Stack
execute if score #StackIdx confetti matches 1.. run function confetti:loader/loop

# Broadcast status
data modify storage confetti API.Message.Author set value '["", {"text":"\\u2b50", "bold":false}, " Confetti"]'
data modify storage confetti API.Message.Type set value "Done"
data modify storage confetti API.Message.Lines set value ['["Loaded ", {"score":{"name":"#Id", "objective":"confetti"}}, " datapacks"]', '[{"text":"\\u2514 Open ", "color":"gray"}, {"text":"[\\u2254 Menu]", "color":"aqua", "hoverEvent":{"action": "show_text", "contents":["Click to open the menu ", {"text":"(OP Level 2+ required)", "color":"gold"}]}, "clickEvent": {"action":"run_command", "value":"/function menu:confetti"}}, " for more details and options"]']
function api:confetti/feedback/broadcast
