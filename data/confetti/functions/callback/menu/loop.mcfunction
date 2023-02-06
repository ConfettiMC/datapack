data modify storage confetti API.GUI.Windows[0].List prepend value {Action: '{"text":"[\\u2254 Open]", "color":"#a6f952"}', Label: '"<Unknown>"', Status: '""'}
data modify storage confetti API.GUI.Windows[0].List[0].Label set from storage confetti Stack[-1].Name
execute if data storage confetti Stack[-1].Warnings[0] run data modify storage confetti API.GUI.Windows[0].List[0].Status set value '{"text":"\\u1d21\\u1d00\\u0280\\u0274\\u05d5\\u0274\\u0262", "color":"#f9f952"}'
execute if data storage confetti Stack[-1].Errors[0] run data modify storage confetti API.GUI.Windows[0].List[0].Status set value '{"text":"\\u1d07\\u0280\\u0280\\u1d0f\\u0280", "color":"#f95252"}'

scoreboard players remove #i confetti 1
data remove storage confetti Stack[-1]
execute if score #i confetti matches 1.. run function confetti:callback/menu/loop
