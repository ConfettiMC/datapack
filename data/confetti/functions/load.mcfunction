scoreboard objectives add confetti_db dummy "Confetti PlayerDB"
scoreboard objectives add confetti dummy "Confetti"
scoreboard objectives add api dummy "Confetti API"

scoreboard objectives add confetti_window dummy
scoreboard objectives add confetti_scroll dummy
scoreboard objectives add confetti_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add zzz.scroll_down trigger "Scroll Down"
scoreboard objectives add zzz.scroll_up trigger "Scroll Up"
scoreboard objectives add zzz.action trigger "Action"

function confetti:core/fetch_minecraft_version
function confetti:loader/load
forceload add 0 0
function confetti:core/tick
