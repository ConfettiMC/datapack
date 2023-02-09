execute store result score #Max.Primary confetti run data get storage confetti Heap.Loader[-1].Dependencies[-1].Version.Max[0]
execute store result score #Max.Major confetti run data get storage confetti Heap.Loader[-1].Dependencies[-1].Version.Max[1]
execute store result score #Max.Minor confetti run data get storage confetti Heap.Loader[-1].Dependencies[-1].Version.Max[2]

execute if score #Primary confetti <= #Max.Primary confetti if score #Major confetti <= #Max.Major confetti if score #Minor confetti <= #Max.Minor confetti run scoreboard players set #Passed confetti 1
