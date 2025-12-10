## Applies saved graves settings $(graves)
scoreboard players operation &prevGraveToggle mp.temp = #graves mp.settings
$scoreboard players set #graves mp.settings $(toggle)
# General Settings
$scoreboard players set #graves.despawn mp.settings $(despawn)
$scoreboard players set #graves.despawn_seconds mp.settings $(despawn_hours)
scoreboard players operation #graves.despawn_seconds mp.settings *= #60 mp.const
$scoreboard players add #graves.despawn_seconds mp.settings $(despawn_minutes)
scoreboard players operation #graves.despawn_seconds mp.settings *= #60 mp.const

$scoreboard players set #graves.locked mp.settings $(locked)
$scoreboard players set #graves.key mp.settings $(key)
$scoreboard players set #graves.auto_unlock mp.settings $(auto_unlock)
$scoreboard players set #graves.unlock_seconds mp.settings $(unlock_hours)
scoreboard players operation #graves.unlock_seconds mp.settings *= #60 mp.const
$scoreboard players add #graves.unlock_seconds mp.settings $(unlock_minutes)
scoreboard players operation #graves.unlock_seconds mp.settings *= #60 mp.const

$scoreboard players set #graves.void_recovery mp.settings $(void_recovery)
$scoreboard players set #graves.void_recovery_dist mp.settings $(void_recovery_dist)
$scoreboard players set #graves.death_coords mp.settings $(death_coords)
$scoreboard players set #graves.compass mp.settings $(compass)
# Inventory Settings
$scoreboard players set #graves.keep_xp mp.settings $(keep_xp)
$scoreboard players set #graves.keep_hotbar mp.settings $(keep_hotbar)
$scoreboard players set #graves.keep_armor mp.settings $(keep_armor)
$scoreboard players set #graves.keep_item mp.settings $(keep_item)
$scoreboard players set #graves.lose_item mp.settings $(lose_item)
# Cosmetic Settings
$scoreboard players set #graves.glowing mp.settings $(glowing)
$scoreboard players set #graves.display_name mp.settings $(display_name)
$scoreboard players set #graves.display_head mp.settings $(display_head)
$scoreboard players set #graves.decorators mp.settings $(grave_decorators)

execute if score &prevGraveToggle mp.temp matches 0 store result score #graves.disabled_keepInventory mp.settings run gamerule keepInventory
execute if score &prevGraveToggle mp.temp matches 0 store result score #graves.disabled_doImmediateRespawn mp.settings run gamerule doImmediateRespawn
execute unless score &prevGraveToggle mp.temp = #graves mp.settings run function m_graves:graves/load
scoreboard players reset &prevGraveToggle mp.temp

scoreboard players operation $unlock_seconds mp.graves = $current_seconds mp.graves
scoreboard players operation $unlock_seconds mp.graves += #graves.despawn_seconds mp.settings
scoreboard players operation $unlock_seconds mp.graves -= #graves.unlock_seconds mp.settings

execute if score #graves.glowing mp.settings matches 0 as @e[type=#m_graves:grave,tag=multipack.grave] run data merge entity @s {Glowing:0b}
execute if score #graves.glowing mp.settings matches 1 as @e[type=#m_graves:grave,tag=multipack.grave] run data merge entity @s {Glowing:1b,glow_color_override:8388608}
execute if score #graves.locked mp.settings matches 0 run tag @e[type=#m_graves:grave,tag=multipack.grave] remove multipack.grave.locked
execute if score #graves.locked mp.settings matches 1 run tag @e[type=#m_graves:grave,tag=multipack.grave] add multipack.grave.locked
