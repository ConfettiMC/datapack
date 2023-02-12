scoreboard players operation #CurrentWindow confetti = @s confetti_window
execute store result score #Windows confetti store result score #d confetti run data get storage confetti API.Player.Confetti.GUI.Windows
scoreboard players remove #d confetti 1
scoreboard players operation #CurrentWindow confetti < #d confetti
execute if score #Windows confetti matches 1.. run function confetti:handle/api/gui/find_window/loop_windows
