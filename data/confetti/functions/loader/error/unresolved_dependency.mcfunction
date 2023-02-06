data modify storage confetti API.Call.Type set value "Error"
data modify storage confetti API.Call.Lines set value ['["Dependency \\"", {"nbt":"Heap.Dependencies[-1].Namespace", "storage":"confetti"}, "\\" is required, but not found"]']
data modify storage confetti Loader[-1].Errors append value '"A dependency was not satisfied."'
function api:confetti/feedback/broadcast
