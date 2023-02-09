function api:confetti/feedback/silence_feedback
data modify storage confetti API.GUI set value {Windows: [{Id: "confetti:menu", Options: {NoStatic: 0b}, Title: '"\\u1d04\\u1d0f\\u0274\\ua730\\u1d07\\u1d1b\\u1d1b\\u05d5"', List: []}]}

data modify storage confetti Heap.Datapacks set from storage confetti Datapacks
execute store result score #Heap.Datapacks confetti run data get storage confetti Heap.Datapacks
execute if score #Heap.Datapacks confetti matches 1.. run function confetti:handle/menu/loop_packs

function api:confetti/gui/create_window
