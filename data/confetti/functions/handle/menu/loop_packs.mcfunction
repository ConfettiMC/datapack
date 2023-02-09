data modify storage confetti API.GUI.Windows[0].List prepend value {Action: '{"text":"[\\u2254 Open]", "color":"#37ff00"}', Label: '"<Unknown>"', Status: '""'}
data modify storage confetti API.GUI.Windows[0].List[0].Label set from storage confetti Heap.Datapacks[-1].Name
execute if data storage confetti Heap.Datapacks[-1].Warnings run data modify storage confetti API.GUI.Windows[0].List[0].Status set value '{"text":"\\u1d21\\u1d00\\u0280\\u0274\\u05d5\\u0274\\u0262", "color":"#ffc800"}'
execute if data storage confetti Heap.Datapacks[-1].Errors run data modify storage confetti API.GUI.Windows[0].List[0].Status set value '{"text":"\\u1d07\\u0280\\u0280\\u1d0f\\u0280", "color":"#ff0037"}'

scoreboard players remove #Heap.Datapacks confetti 1
data remove storage confetti Heap.Datapacks[-1]
execute if score #Heap.Datapacks confetti matches 1.. run function confetti:handle/menu/loop_packs
