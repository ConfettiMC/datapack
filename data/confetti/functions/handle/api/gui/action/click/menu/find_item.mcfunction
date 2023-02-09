execute if score Action confetti matches ..0 run function confetti:handle/api/gui/action/click/menu/found

scoreboard players remove Action confetti 1
data remove storage confetti Heap.Items[0]
execute if score Action confetti matches 0.. run function confetti:handle/api/gui/action/click/menu/find_item
