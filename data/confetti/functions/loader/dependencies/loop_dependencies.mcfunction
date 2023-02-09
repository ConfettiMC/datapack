scoreboard players set Found confetti 0
data modify storage confetti Heap.Packs set from storage confetti Loader
execute store result score #Heap.Packs confetti run data get storage confetti Heap.Packs
function confetti:loader/dependencies/loop_packs
execute if score Found confetti matches 0 run function confetti:loader/errors/unresolved_dependency

# Iterate
scoreboard players remove #Heap.Dependencies confetti 1
data remove storage confetti Heap.Loader[-1].Dependencies[-1]
execute if score #Heap.Dependencies confetti matches 1.. run function confetti:loader/dependencies/loop_dependencies
