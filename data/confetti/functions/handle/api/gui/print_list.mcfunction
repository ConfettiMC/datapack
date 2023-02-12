scoreboard players set #Limit confetti 8
scoreboard players operation #Scroll confetti = @s confetti_scroll
scoreboard players set #Index confetti 0
execute store result score #f confetti run data get storage confetti API.Player.Confetti.GUI.Windows[0].List

execute if score #f confetti matches 1.. run function confetti:handle/api/gui/print_list/scroll_list
execute if score #f confetti matches 1.. run tellraw @s ["\u2502 ", {"text":"And ", "color":"#898989", "extra":[{"score":{"name":"#f", "objective":"confetti"}}, " more..."]}]
tellraw @s "\u2502"
execute unless score #f confetti matches 1.. unless score @s confetti_scroll matches 1.. run tellraw @s ["\u251c\u2500\u2500\u2500\u2500\u2500\u2500 ", {"text":"[\u25bc]", "color":"#898989"}, " ", {"text":"[\u25b2]", "color":"#898989"}, " \u2500\u2500"]
execute unless score #f confetti matches 1.. if score @s confetti_scroll matches 1.. run tellraw @s ["\u251c\u2500\u2500\u2500\u2500\u2500\u2500 ", {"text":"[\u25bc]", "color":"#898989"}, " ", {"text":"[\u25b2]", "clickEvent":{"action":"run_command", "value":"/trigger zzz.scroll_up"}}, " \u2500\u2500"]
execute if score #f confetti matches 1.. unless score @s confetti_scroll matches 1.. run tellraw @s ["\u251c\u2500\u2500\u2500\u2500\u2500\u2500 ", {"text":"[\u25bc]", "clickEvent":{"action":"run_command", "value":"/trigger zzz.scroll_down"}}, " ", {"text":"[\u25b2]", "color":"#898989"}, " \u2500\u2500"]
execute if score #f confetti matches 1.. if score @s confetti_scroll matches 1.. run tellraw @s ["\u251c\u2500\u2500\u2500\u2500\u2500\u2500 ", {"text":"[\u25bc]", "clickEvent":{"action":"run_command", "value":"/trigger zzz.scroll_down"}}, " ", {"text":"[\u25b2]", "clickEvent":{"action":"run_command", "value":"/trigger zzz.scroll_up"}}, " \u2500\u2500"]
tellraw @s "\u2502"

# No elements were displayed due to an invalid scroll
execute if score #Limit confetti matches 8 run function confetti:handle/api/gui/print_list/reset
