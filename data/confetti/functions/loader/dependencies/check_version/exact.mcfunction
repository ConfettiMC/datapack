scoreboard players set #Passed confetti 0

execute store result score #Exact.Primary confetti run data get storage confetti Heap.Loader[-1].Dependencies[-1].Version.Exact[0]
execute store result score #Exact.Major confetti run data get storage confetti Heap.Loader[-1].Dependencies[-1].Version.Exact[1]
execute store result score #Exact.Minor confetti run data get storage confetti Heap.Loader[-1].Dependencies[-1].Version.Exact[2]

execute if score #Primary confetti = #Exact.Primary confetti if score #Major confetti = #Exact.Major confetti if score #Minor confetti = #Exact.Minor confetti run scoreboard players set #Passed confetti 1

execute if score #Passed confetti matches 0 run function confetti:loader/warning/invalid_dependency/exact
