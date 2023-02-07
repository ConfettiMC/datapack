scoreboard players set #InRange confetti 1

# Validate dependencies
data modify storage confetti Heap.Dependencies set from storage confetti Loader[-1].Dependencies
execute store result score #j confetti run data get storage confetti Heap.Dependencies
execute if score #j confetti matches 1.. run function confetti:loader/dependencies/loop
