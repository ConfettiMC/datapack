execute store success score #Succeed confetti run data modify storage confetti Heap.Packs[-1].Id set from storage confetti Heap.Loader[-1].Dependencies[-1].Id
execute if score #Succeed confetti matches 0 run function confetti:loader/dependencies/found_dependency

# Iterate
scoreboard players remove #Heap.Packs confetti 1
data remove storage confetti Heap.Packs[-1]
execute if score #Heap.Packs confetti matches 1.. run function confetti:loader/dependencies/loop_packs
