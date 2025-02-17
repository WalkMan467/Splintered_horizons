execute unless score @s item.tp_book.casting matches -1 run return fail

scoreboard players set @s player.actionbar.state_machine 1

playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 80 normal @a

scoreboard players set @a item.tp_book.casting 140
schedule function items:type/tp_book/rc/loop 1t