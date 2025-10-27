tellraw @s [{"player":"WalkMan467","color":"white","bold":false},{"text":" "},{"text":"WalkMan467","color":"gold","bold":true},{"text":" : ","color":"white"},{"translate":"player.tombstone_system.1","fallback":"你無法拿取對方墓碑中的物品","color":"red"}]

playsound minecraft:block.vault.insert_item_fail voice @a ~ ~0.5 ~ 1 1
playsound minecraft:block.vault.insert_item_fail voice @a ~ ~0.5 ~ 1 1

particle dust_color_transition{from_color: [1.0f, 0.0f, 0.0f], scale: 1.5f, to_color: [0.75f, 0.0f, 0.0f]} ~ ~0.5 ~ 0.5 0.5 0.5 0 10 normal @a

playsound minecraft:block.note_block.didgeridoo voice @a ~ ~0.5 ~ 1 1
playsound minecraft:block.note_block.didgeridoo voice @a ~ ~0.5 ~ 1 1