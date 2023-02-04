execute store result score #Min.Primary confetti run data get storage confetti Heap.Dependencies[-1].Version.Min[0]
execute store result score #Min.Major confetti run data get storage confetti Heap.Dependencies[-1].Version.Min[1]
execute store result score #Min.Minor confetti run data get storage confetti Heap.Dependencies[-1].Version.Min[2]

execute if score #Primary confetti >= #Min.Primary confetti if score #Major confetti >= #Min.Major confetti if score #Minor confetti >= #Min.Minor confetti run scoreboard players set #Passed confetti 1
execute if score #Passed confetti matches 0 run function confetti:loader/error/invalid_dependency_version/range
