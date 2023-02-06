scoreboard players remove #Scroll confetti 1
execute if score #Scroll confetti matches ..-1 run function confetti:callback/gui/render_window/print_list/loop
execute unless score #Scroll confetti matches ..-1 run function confetti:callback/gui/render_window/print_list/skip
