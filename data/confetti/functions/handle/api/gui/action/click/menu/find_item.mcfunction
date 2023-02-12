execute if score Action api matches ..0 run function confetti:handle/api/gui/action/click/menu/found

scoreboard players remove Action api 1
data remove storage confetti Heap.Items[0]
execute if score Action api matches 0.. run function confetti:handle/api/gui/action/click/menu/find_item
