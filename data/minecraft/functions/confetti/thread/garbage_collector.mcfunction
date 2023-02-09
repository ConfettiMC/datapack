schedule function minecraft:confetti/thread/garbage_collector 30s

scoreboard players reset * confetti
scoreboard players reset * api

data remove storage confetti API
data remove storage confetti Heap
data remove storage confetti Logger
