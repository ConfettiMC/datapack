data modify storage confetti Heap.Packs set from storage confetti Heap.Loader
execute store result score #k confetti run data get storage confetti Heap.Packs
scoreboard players set #Failed confetti 1
function confetti:loader/dependencies/locate_dependency
execute if score #Failed confetti matches 1 run function confetti:loader/error/unresolved_dependency

# Remove the last heap item and iterate further
scoreboard players remove #j confetti 1
data remove storage confetti Heap.Pack[-1]
execute if score #j confetti matches 1.. run function confetti:loader/dependencies/loop
