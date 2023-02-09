tellraw @s ["\n\u250c\u2500\u2500\u2500 ", {"nbt":"API.Player.Confetti.GUI.Windows[0].Title", "storage":"confetti", "interpret":true}, " \u2500\u2500"]
execute if data storage confetti API.Player.Confetti.GUI.Windows[0].List[0] run function confetti:handle/api/gui/print_list
execute unless data storage confetti API.Player.Confetti.GUI.Windows[0].Options{NoStatic: 1b} run function confetti:handle/api/gui/print_static
tellraw @s ["\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"]
