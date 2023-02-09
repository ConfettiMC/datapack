scoreboard objectives add confetti_db dummy "Confetti Database"
scoreboard objectives add confetti dummy "Confetti"
scoreboard objectives add api dummy "Confetti API"

scoreboard objectives add cft.on_leave minecraft.custom:minecraft.leave_game "Confetti:OnLeave"
scoreboard objectives add confetti_window dummy
scoreboard objectives add confetti_scroll dummy
scoreboard objectives add zzz.scroll_down trigger "Scroll Down"
scoreboard objectives add zzz.scroll_up trigger "Scroll Up"
scoreboard objectives add zzz.action trigger "Action"

execute unless entity @p run schedule function minecraft:confetti/load 1s
execute if entity @p run function confetti:load
