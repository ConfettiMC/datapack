data modify storage confetti API.Call.Type set value "Warning"
data modify storage confetti API.Call.Lines set value ['["Dependency ", {"nbt":"Heap.Packs[-1].Name", "storage":"confetti", "color":"yellow"}, " has the version of ", {"score":{"name":"#Primary", "objective":"confetti"}}, ".", {"score":{"name":"#Major", "objective":"confetti"}}, ".", {"score":{"name":"#Minor", "objective":"confetti"}}, ", but [", {"score":{"name":"#Min.Primary", "objective":"confetti"}}, ".", {"score":{"name":"#Min.Major", "objective":"confetti"}}, ".", {"score":{"name":"#Min.Minor", "objective":"confetti"}}, "-", {"score":{"name":"#Max.Primary", "objective":"confetti"}}, ".", {"score":{"name":"#Max.Major", "objective":"confetti"}}, ".", {"score":{"name":"#Max.Minor", "objective":"confetti"}}, "] is required!"]']
data modify storage confetti Loader[-1].Warnings append value '"A dependency has invalid version."'
function api:confetti/feedback/broadcast
