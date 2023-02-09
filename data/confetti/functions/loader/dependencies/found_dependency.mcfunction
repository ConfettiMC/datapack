scoreboard players set #Heap.Packs confetti 0
scoreboard players set Found confetti 1

execute store result score #Primary confetti run data get storage confetti Heap.Packs[-1].Version[0]
execute store result score #Major confetti run data get storage confetti Heap.Packs[-1].Version[1]
execute store result score #Minor confetti run data get storage confetti Heap.Packs[-1].Version[2]

execute if data storage confetti Heap.Loader[-1].Dependencies[-1].Version.Exact run function confetti:loader/dependencies/check_version/exact
execute unless data storage confetti Heap.Loader[-1].Dependencies[-1].Version.Exact run function confetti:loader/dependencies/check_version/range
