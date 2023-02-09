title @a actionbar ["", {"text":"Confetti", "bold":true, "color":"#ffc800", "extra":[{"text":" \u2b50 ", "bold":false}]}, "Loading datapacks..."]
schedule function minecraft:confetti/thread/garbage_collector 1t
schedule function minecraft:confetti/thread/tick 1t

# Collect information
data modify storage confetti Loader set value [{Id: "built-in", Name: '["Confetti", {"text":" (Built-in)", "bold":false, "color":"#898989"}]', Description: '"Built-in pseudo-pack for version validation purposes."', Authors: ['"BubbleFish"'], Version: [B; 1b, 0b, 0b], Minecraft: {From: [1, 17, 0], To: [1, 19, 4]}}]
function #confetti:register

# Load packs
function api:confetti/core/fetch_minecraft_version/as_score
data modify storage confetti Datapacks set value []
data modify storage confetti Heap.Loader set from storage confetti Loader
execute store result score Packs confetti store result score #Heap.Loader confetti run data get storage confetti Heap.Loader
execute if score #Heap.Loader confetti matches 1.. run function confetti:loader/loop_packs
data remove storage confetti Loader

# Feedback
data modify storage confetti Logger set value {Name: '{"text":"Confetti", "color":"#ffc800", "extra":[{"text":" \\u2b50", "bold":false}]}', Message: '["Loaded ", {"score":{"name":"Packs", "objective":"confetti"}}, " packs"]'}
function api:confetti/feedback/broadcast/info
tellraw @a {"text":"\u2514 Open ", "color":"#898989", "extra":[{"text":"[Menu]", "color":"#52f9f9", "clickEvent":{"action": "run_command", "value":"/function menu:confetti"}}, " for more information"]}

# Helper-container
kill @e[type=marker,tag=confetti.container]
setblock 0 -64 0 air
execute store success score Placed confetti run setblock 0 -64 0 bedrock
execute if score Placed confetti matches 1 positioned 0 -64 0 run function minecraft:confetti/helper_container
execute if score Placed confetti matches 0 positioned 0 0 0 run function minecraft:confetti/helper_container
