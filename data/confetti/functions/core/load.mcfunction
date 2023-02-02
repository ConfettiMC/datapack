# -> #minecraft:load
execute unless entity @p run schedule function confetti:core/load 1s
execute if entity @p run function confetti:core/init
