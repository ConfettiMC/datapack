#! #minecraft:load
execute unless entity @p run schedule function confetti:core/load 1s
execute if entity @p run function confetti:load

scoreboard players set #10000000 confetti 10000000
scoreboard players set #10000 confetti 10000
