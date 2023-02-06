execute store result score #Primary confetti run data get storage confetti API.Data.Version[0]
execute store result score #Major confetti run data get storage confetti API.Data.Version[1]
execute store result score #Minor confetti run data get storage confetti API.Data.Version[2]

tellraw @s ["\u2502 ", {"text":"\u2b50 \u1d20\u1d07\u0280\ua731\u05d5\u1d0f\u0274", "color":"#f9f952"}, {"text":" \u21d2 ", "color":"#898989"}, {"score":{"name":"#Primary", "objective":"confetti"}}, ".", {"score":{"name":"#Major", "objective":"confetti"}}, ".", {"score":{"name":"#Minor", "objective":"confetti"}}]
tellraw @s ["\u2502 ", {"text":"\u2764 \u1d00\u1d1c\u1d1b\u029c\u1d0f\u0280\ua731", "color":"#a6f952"}, {"text":" \u21d2 ", "color":"#898989"}, {"nbt":"API.Data.Authors[]", "storage":"confetti", "interpret":true, "separator":{"text":" \u2039 \u203a ", "color":"#898989"}}]
tellraw @s ["\u2502 ", {"text":"\ud83d\udd25 \u1d05\u1d07\u1d18\u1d07\u0274\u1d05\u1d07\u0274\u1d04\u05d5\u1d07\ua731", "color":"#f9a652"}, {"text":" \u21d2 ", "color":"#898989"}, {"nbt":"API.Data.Dependencies[].Namespace", "storage":"confetti", "separator":{"text":" \u2039 \u203a ", "color":"#898989"}}]

tellraw @s ["\u251c\u2500\u2500\u2500\u2500 ", {"text":"\u1d07\u0280\u0280\u1d0f\u0280\ua731 / \u1d21\u1d00\u0280\u0274\u05d5\u0274\u0262\ua731"}, " \u2500\u2500"]
execute store result score #Warnings confetti run data get storage confetti API.Data.Warnings
execute store result score #Errors confetti run data get storage confetti API.Data.Errors
execute if score #Warnings confetti matches 1.. run function confetti:callback/gui/print/datapack/main/warnings
execute if score #Errors confetti matches 1.. run function confetti:callback/gui/print/datapack/main/errors
