scoreboard players remove #Scroll confetti 1
execute if score #Scroll confetti matches ..-1 run function confetti:handle/api/gui/print_list/print_item
execute unless score #Scroll confetti matches ..-1 run function confetti:handle/api/gui/print_list/skip
