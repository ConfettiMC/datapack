function api:confetti/feedback/silence_feedback
data modify storage confetti API.GUI set value {Windows: [{Id: "confetti:datapack", Options: {NoStatic: 0b}, Title: '""'}]}

data modify storage confetti Heap.Items set from storage confetti Datapacks
execute store result score #i confetti run data get storage confetti Heap.Items
execute if score #i confetti matches 1.. run function confetti:handle/api/gui/action/click/menu/find_item

function api:confetti/gui/create_window
