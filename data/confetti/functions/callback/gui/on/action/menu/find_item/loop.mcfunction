execute if score Action confetti matches ..0 run function confetti:callback/gui/on/action/menu/find_item/found

scoreboard players remove Action confetti 1
data remove storage confetti Stack[-1]
execute if score Action confetti matches 1.. run function confetti:callback/gui/on/action/menu/find_item/loop
