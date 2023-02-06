function api:confetti/feedback/silence_feedback
data modify storage confetti API.GUI set value {Windows: [{Id: "confetti:menu", Options: {NoStatic: 0b}, Title: '"\\u1d04\\u1d0f\\u0274\\ua730\\u1d07\\u1d1b\\u1d1b\\u05d5"', List: []}]}

data modify storage confetti Stack set from storage confetti Datapacks
execute store result score #i confetti run data get storage confetti Stack
execute if score #i confetti matches 1.. run function confetti:callback/menu/loop

function api:confetti/gui/create_window
