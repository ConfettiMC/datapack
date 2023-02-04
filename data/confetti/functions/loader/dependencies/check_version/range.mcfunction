scoreboard players set #Passed confetti 0
execute if data storage confetti Heap.Dependencies[-1].Version.Min run function confetti:loader/dependencies/check_version/min
execute if data storage confetti Heap.Dependencies[-1].Version.Max run function confetti:loader/dependencies/check_version/max
execute if score #Passed confetti matches 0 run function confetti:loader/error/invalid_dependency_version/range
