function api:confetti/feedback/silence_feedback
data modify storage confetti API.GUI set value {Windows: [{Id: "confetti:datapack", Options: {NoStatic: 0b}, Title: '""'}]}

data modify storage confetti Stack set from storage confetti Datapacks
execute store result score #i confetti run data get storage confetti Stack
execute if score #i confetti matches 1.. run function confetti:callback/gui/on/action/menu/find_item/loop

function api:confetti/gui/create_window
