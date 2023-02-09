data modify storage confetti Heap.Loader[-1].Errors set value 1b
data modify storage confetti Logger.Message set value '["Dependency ", {"text":"\\"", "color":"#37ff00", "extra":[{"nbt":"Heap.Loader[-1].Dependencies[-1].Id", "storage":"confetti"}, "\\""]}, " is required but not installed!"]'
function api:confetti/feedback/broadcast/error
