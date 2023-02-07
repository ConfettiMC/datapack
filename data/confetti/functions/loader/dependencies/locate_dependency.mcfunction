scoreboard players remove #k confetti 1

execute store success score #Succeed confetti run data modify storage confetti Heap.Packs[-1].Namespace set from storage confetti Heap.Dependencies[-1].Namespace
execute if score #Succeed confetti matches 0 run function confetti:loader/dependencies/found_dependency

data remove storage confetti Heap.Packs[-1]
execute if score #k confetti matches 1.. run function confetti:loader/dependencies/locate_dependency
