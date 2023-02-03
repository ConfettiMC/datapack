# Collect datapacks information
data modify storage confetti Datapacks set value []
data modify storage confetti Loader set value []
scoreboard players set #Id confetti 0
function #confetti:load

# Process datapacks
data modify storage confetti Heap.Loader set from storage confetti Loader
execute store result score PackCount confetti store result score #i confetti run data get storage confetti Loader
execute if score #i confetti matches 1.. run function confetti:loader/loop

# Feedback
data modify storage confetti API.Call set value {Type: "Done", Pack: '["", {"text":"\\u2b50", "bold":false}, " Confetti"]', Lines: ['["Loaded ", {"score":{"name":"PackCount", "objective":"confetti"}}, " datapacks"]', '[{"text":"\\u2514 Open ", "color":"gray"}, {"text":"[\\u2254 Menu]", "color":"aqua", "hoverEvent":{"action": "show_text", "contents":["Click to open the menu ", {"text":"(OP Level 2+ required)", "color":"gold"}]}, "clickEvent": {"action":"run_command", "value":"/function menu:confetti"}}, " for more details and options"]']}
function api:confetti/feedback/broadcast
