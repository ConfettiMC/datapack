tellraw @s ["\u2502 ", {"nbt":"API.Player.Confetti.GUI.Windows[0].List[0].Action", "storage":"confetti", "interpret":true, "clickEvent":{"action":"run_command", "value":"/trigger zzz.action set 1"}}, " ", {"nbt":"API.Player.Confetti.GUI.Windows[0].List[0].Label", "storage":"confetti", "interpret":true, "bold":true}, " ", {"nbt":"API.Player.Confetti.GUI.Windows[0].List[0].Status", "storage":"confetti", "interpret":true}]
# ... TODO ACTION BUTTON
scoreboard players remove #f confetti 1
scoreboard players remove #Limit confetti 1
data remove storage confetti API.Player.Confetti.GUI.Windows[0].List[0]
execute if score #Limit confetti matches 1.. if score #f confetti matches 1.. run function confetti:callback/gui/render_window/print_list/loop
