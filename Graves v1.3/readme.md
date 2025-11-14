# Graves
(Requires the game rule _keepInventory_ to be true and _doImmediateRespawn_ to be false)

When a player dies they will leave a grave at the site of their death which will will keep their items and experience safe. Left or right click the grave to open it and drop its contents. This datapack is multiplayer-friendly and highly configurable, allowing you to make graves despawn, how long it takes for them to despawn, what items are dropped, and more!

The amount of experience dropped on death no longer has a maximum. E.g. players dying at level 30 will now drop 13 levels of experience rather than 7.
## Config Settings
To open the settings menu, run the command `/function m_graves:settings/open` to open an interactive GUI.

### General Settings
**Despawn Despawn:** Graves will automatically despawn after a specific amount of time, causing them to drop their contents. Note that unlike items, this timer will continue when the grave is not loaded. (Disabled by default with a default time of 10 minutes)

**Void Recovery:** Dying in or above the void will cause your grave to be placed on solid block within a specified horizontal radius.

**Locked Graves:** Graves can only be opened by their owner. (Disabled by default)

**Keys:** After a player dies they will recieve a key that other players can use to open their grave. The key will disappear when used. (Disabled by default)

**Auto Unlock:** Locked graves will automatically unlock themselves after a specified amount of time. (Disabled by default with a default time of 5 minutes)

**Show Death Coordinates:** After a player dies, the coordinates and dimension of their death are shown to them in chat. (Disabled by default)

**Death Locator Compass:** After a player dies, they will be given a compass which points to the location of their death. The compass also acts as a key if that toggle is enabled. (Disabled by default)

### Cosmetic Settings
**Glowing Graves:** Graves can be seen through walls. (disabled by default)

**Display Player Name:** Graves display the name of their owner. (enabled by default)

**Display Player Head:** Graves display the head of their owner. (enabled by default)

**Grave Decorators:** Graves have randomized vegetation. (enabled by default)

### Inventory Settings
**Keep Experience:** Experience is kept on death. (disabled by default)

**Keep Hotbar:** Items in the hotbar are kept on death (disabled by default).

**Keep armor:** Equiped armor is kept on death (disabled by default).

**Keep Some Items:** Some items are not dropped on death (disabled by default). The list of items defaults to weapons, armor, tools, and other equipment but can be changed in `m_graves/tags/items/kept_items`.

**Lose Some Items:** Some items are permanently lost on death (disabled by default). The list of items is empty by default but can be changed in `m_graves/tags/items/lost_items`.

Some item tags have been made built-in for the convenience of editing the kept and lost items:
- `#m_graves:equipment` for weapons, armor, tools, and other equipment
- `#m_graves:mob_drops` for mob drops
- `#m_graves:rare_items` for items that have colored text when unenchanted (netherstars, dragon egg, etc)
- `#m_graves:resources` for mined resources (coal, iron, diamond, netherite, etc)
- `#m_graves:smithing_templates` for all smithing templates

## Grave Placement
When a grave is spawned it will move to the floor directly beneath it rather than float in the air. If the player dies in a solid block it will check adjacent empty blocks to spawn the grave. If the player dies in non-flowing lava, it will attempt to place the grave at the surface of the lava.
