tellraw @s [{"text":"\u2502 ", "color":"#f9f952"}, {"nbt":"API.Data.Warnings[-1]", "storage":"confetti", "interpret":true}]

scoreboard players remove #Warnings confetti 1
data remove storage confetti API.Data.Warnings[-1]
execute if score #Warnings confetti matches 1.. run function confetti:callback/gui/print/datapack/main/warnings
