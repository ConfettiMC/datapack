scoreboard players remove #CurrentWindow confetti 1
data remove storage confetti API.Player.Confetti.GUI.Windows[0]
execute if score #CurrentWindow confetti matches 1.. run function confetti:callback/gui/render_window/find_window/loop
