execute if score @s item.tp_book.point.x.temp matches -2147483648..2147483647 run return 0
tag @s add item.tp_book.safe_area.point.failure

scoreboard players set @s player.actionbar.sys.forging_table.failure.id 2
scoreboard players set @s player.actionbar.tp_book.failure 40

playsound minecraft:block.vault.insert_item_fail voice @a ~ ~1 ~ 1 1
playsound minecraft:block.vault.insert_item_fail voice @a ~ ~1 ~ 1 1

particle dust_color_transition{from_color: [1.0f, 0.0f, 0.0f], scale: 1.5f, to_color: [0.75f, 0.0f, 0.0f]} ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a

playsound minecraft:block.note_block.didgeridoo voice @a ~ ~1 ~ 1 1
playsound minecraft:block.note_block.didgeridoo voice @a ~ ~1 ~ 1 1