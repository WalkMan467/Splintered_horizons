execute if score @s player.click.interval matches 1.. run return 0
scoreboard players set @s player.click.interval 5

execute unless score @s item.tp_book.casting matches -1 run return 0
execute if score #boss_area.chapter_2.elekiel global.main matches 1 run tellraw @s {"translate": "dialog.main.quick_actions.fail.boss","color": "red"}
execute if score #boss_area.chapter_2.elekiel global.main matches 1 run return 0
execute if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run tellraw @s {"translate": "dialog.main.quick_actions.fail.boss","color": "red"}
execute if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run return 0

playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 80 normal @a

scoreboard players set @s item.tp_book.casting 140
schedule function item:type/tp_book/rc/loop 1t