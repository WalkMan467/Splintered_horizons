tag @s add sys.forging_table.crafted_item.energy_infusion.failure

scoreboard players set @a[distance=..6] player.actionbar.sys.forging_table.energy_infusion_failure 40

playsound minecraft:block.vault.insert_item_fail voice @a ~ ~1 ~ 1 1
playsound minecraft:block.vault.insert_item_fail voice @a ~ ~1 ~ 1 1

particle dust_color_transition{from_color: [1.0f, 0.0f, 0.0f], scale: 1.5f, to_color: [0.75f, 0.0f, 0.0f]} ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a

playsound minecraft:block.note_block.didgeridoo voice @a ~ ~1 ~ 1 1
playsound minecraft:block.note_block.didgeridoo voice @a ~ ~1 ~ 1 1