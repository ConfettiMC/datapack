execute if data storage confetti API.Message{Type: "Error"} run tellraw @a ["\n[", {"nbt":"API.Message.Author", "storage":"confetti", "interpret": true, "bold":true}, "]", {"text":" \u274c ", "color":"red", "extra":[{"text":"ERROR", "bold":true}]}, {"text":" \u261e ", "color":"gray"}, {"nbt":"API.Message.Lines[]", "interpret": true, "separator": "\n", "storage": "confetti"}]
execute if data storage confetti API.Message{Type: "Warning"} run tellraw @a ["\n[", {"nbt":"API.Message.Author", "storage":"confetti", "interpret": true, "bold":true}, "]", {"text":" \u26a0 ", "color":"yellow", "extra":[{"text":"WARNING", "bold":true}]}, {"text":" \u261e ", "color":"gray"}, {"nbt":"API.Message.Lines[]", "interpret": true, "separator": "\n", "storage": "confetti"}]
execute if data storage confetti API.Message{Type: "Info"} run tellraw @a ["\n[", {"nbt":"API.Message.Author", "storage":"confetti", "interpret": true, "bold":true}, "]", {"text":" ", "color":"gray", "extra":[{"text":"INFO", "bold":true}]}, {"text":" \u261e ", "color":"gray"}, {"nbt":"API.Message.Lines[]", "interpret": true, "separator": "\n", "storage": "confetti"}]
execute if data storage confetti API.Message{Type: "Done"} run tellraw @a ["\n[", {"nbt":"API.Message.Author", "storage":"confetti", "interpret": true, "bold":true}, "]", {"text":" \u2714 ", "color":"green", "extra":[{"text":"DONE", "bold":true}]}, {"text":" \u261e ", "color":"gray"}, {"nbt":"API.Message.Lines[]", "interpret": true, "separator": "\n", "storage": "confetti"}]
