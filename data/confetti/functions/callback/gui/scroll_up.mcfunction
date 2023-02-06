scoreboard players remove @s confetti_scroll 8
scoreboard players set @s[scores={confetti_scroll=..-1}] confetti_scroll 0
scoreboard players reset @s zzz.scroll_up
function confetti:callback/gui/render_window
