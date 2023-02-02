# Confetti Data-Pack
A Powerful Minecraft Data-Pack Framework

# Table of contents
* [Documentation](#documentation)

# Documentation

## 📜 Modules
Confetti separates its features into different modules:
* [📁 **Loader**](#📁-loader) - Loads data-packs, checks for dependencies and supported Minecraft versions.
    * [Creating a datapack](#creating-a-datapack).
* [🗃️ **Manager**](#🔧-manager) - Adds control of data-packs, game rules, permissions and more accessable by users.
* [🔧 **API**](#🗃️-api-references) - Allows developers access different features.

---

## 📁 Loader
Loads data-packs, checks for dependencies and supported Minecraft versions.

Instead of using `#minecraft:load`, datapacks rely on `#confetti:load`, which is only ran after confetti is set up and ready to be used.

During setting up stage Confetti will collect information provided by datapacks and extend it with additional system information.

When a data-pack is being processed, Confetti checks whether Minecraft version is supported by the pack and whether all dependencies are satisfied.

All the steps result in `minecraft:confetti Datapacks` storage containing all the loaded datapacks.

### **Creating a datapack:**

You will need to register your pack inside of a function tag `#confetti:load` (`.../data/confetti/tags/functions/load.json`):
```json
// Replace <namespace> with your datapack namespace. Example: "my_datapack"
// Replace <path> with any function path you want to use. Example: "confetti/load"
{
    "values": [
        "<namespace>:<path>"
    ]
}
```

Inside of the function you will only need to append to the confetti Loader storage. For example:
```mcfunction
data modify storage confetti Loader append {Namespace: "example", Name: '"Confetti Example"', Version: [B; 1b, 0b, 0b], Minecraft: {From: [B; 1b, 16b, 0b], To:[B; 1b, 19b, 3b]}, Dependencies:[{Namespace: "example_dependency", Version:{Min:[B; 1b, 2b, 0b]}, Download:'{"text":"Modrinth", "clickEvent":{"action":"open_link", "value":"https://modrinth.com/example_dependency"}}'}], Gamerules:[{Id:"example_gamerule", Default:0b, Description:'"This is an example gamerule that can be toggled to true or false"'}], Permissions:[{Id:"example_permission", Default:"CREATIVE_MODE", Description:'"This is an example permission"'}]}
```
* **Namespace** - Your unique identifier YOU will use later to answer Confetti's function calls

* **Name** - Display name of your pack, uses string JSON (translations, colors, etc.).\
    * ⚠️ You must have '"THIS"' instead of "THIS" if you want to use a string

* **Version** - The version of your pack, uses a byte array, in this example the version is 1.0.0 or 1.0a (however you wish to interpret).

* **Minecraft** - Specifies versions of Minecraft that are supported using `From` and `To` byte arrays. In this example `1.16-1.19.3` is specified.

* **Dependencies** - Array of __Confetti__ dependencies such as libraries, cores and other.
    * In this example datapack with `example_dependency` namespace of version `1.2.0` or higher is required. In case of a missing dependency, player will be prompted with the message from `Download` to install the latest version.

* **GameRules** - Array of [Confetti gamerules](#📔-gamerules) that your datapack provides.

* **Permissions** - Array of [Confetti permissions](#✋-permissions) that your datapack provides.

Now your datapack is registered! It is already functional, but now you should implement more features from [Confetti Manager](#🔧-manager)!

---

## 🔧 Manager
Adds control of data-packs, game rules, permissions and more accessable by users.

---

## 🗃️ API References
...

## 📔 GameRules
...

## ✋ Permissions
...
