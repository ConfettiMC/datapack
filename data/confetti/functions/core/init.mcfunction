scoreboard objectives add confetti dummy "Confetti"
scoreboard objectives add api dummy "Confetti API"
function confetti:loader/fetch_minecraft_version

execute unless data storage confetti Framework.Version run function confetti:load
execute if data storage confetti Framework.Version run function confetti:update

forceload add 0 0
