tellraw @s [{"text":"\u2502 ", "color":"#f95252"}, {"nbt":"API.Data.Errors[-1]", "storage":"confetti", "interpret":true}]

scoreboard players remove #Errors confetti 1
data remove storage confetti API.Data.Errors[-1]
execute if score #Errors confetti matches 1.. run function confetti:callback/gui/print/datapack/main/errors
