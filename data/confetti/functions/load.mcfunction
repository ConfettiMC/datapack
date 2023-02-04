scoreboard objectives add confetti_db dummy "Confetti PlayerDB"
scoreboard objectives add confetti dummy "Confetti"
scoreboard objectives add api dummy "Confetti API"

scoreboard objectives add confetti_leave minecraft.custom:minecraft.leave_game

function confetti:core/fetch_minecraft_version
function confetti:loader/load
forceload add 0 0
function confetti:core/tick
