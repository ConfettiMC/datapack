execute store result score #Primary confetti run data get storage confetti API.Data.Version[0]
execute store result score #Major confetti run data get storage confetti API.Data.Version[1]
execute store result score #Minor confetti run data get storage confetti API.Data.Version[2]

tellraw @s ["\u2502 ", {"text":"\u2632 \u1d05\u1d07\ua731\u1d04\u0280\u05d5\u1d18\u1d1b\u05d5\u1d0f\u0274", "color":"#52f9f9"}, {"text":" \u21d2 ", "color":"#898989"}, {"nbt":"API.Data.Description", "interpret":true, "storage":"confetti"}]
tellraw @s ["\u2502 ", {"text":"\u2b50 \u1d20\u1d07\u0280\ua731\u05d5\u1d0f\u0274", "color":"#ffc800"}, {"text":" \u21d2 ", "color":"#898989"}, {"score":{"name":"#Primary", "objective":"confetti"}}, ".", {"score":{"name":"#Major", "objective":"confetti"}}, ".", {"score":{"name":"#Minor", "objective":"confetti"}}]
tellraw @s ["\u2502 ", {"text":"\u2764 \u1d00\u1d1c\u1d1b\u029c\u1d0f\u0280\ua731", "color":"#37ff00"}, {"text":" \u21d2 ", "color":"#898989"}, {"nbt":"API.Data.Authors[]", "storage":"confetti", "interpret":true, "separator":{"text":" \u2039 \u203a ", "color":"#898989"}}]
tellraw @s ["\u2502 ", {"text":"\ud83d\udd25 \u1d05\u1d07\u1d18\u1d07\u0274\u1d05\u1d07\u0274\u1d04\u05d5\u1d07\ua731", "color":"#f9a652"}, {"text":" \u21d2 ", "color":"#898989"}, {"nbt":"API.Data.Dependencies[].Namespace", "storage":"confetti", "separator":{"text":" \u2039 \u203a ", "color":"#898989"}}]
tellraw @s "\u2502"
tellraw @s ["\u251c\u2500\u2500\u2500\u2500 ", "\u1d18\u1d00\u0262\u1d07\ua731", " \u2500\u2500"]
tellraw @s "\u2502"
tellraw @s ["\u2502 ", {"text":"[\u2254 Permissions]", "color":"#52f9f9", "clickEvent":{"action":"run_command", "value":"/trigger zzz.action set 1"}}]
tellraw @s ["\u2502 ", {"text":"[\u2254 GameRules]", "color":"#ffc800", "clickEvent":{"action":"run_command", "value":"/trigger zzz.action set 2"}}]
tellraw @s ["\u2502 ", {"text":"[\u2254 Credits]", "color":"#37ff00", "clickEvent":{"action":"run_command", "value":"/trigger zzz.action set 3"}}]

