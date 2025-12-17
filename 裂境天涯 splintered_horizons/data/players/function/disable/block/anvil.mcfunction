advancement revoke @s only players:disable/block/anvil

scoreboard players set @s player.actionbar.disabled_anvil 40
scoreboard players set @s player.actionbar.disabled_bed 0

stopsound @s voice minecraft:entity.cat.death
stopsound @s voice minecraft:block.note_block.pling

playsound minecraft:entity.cat.death voice @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .61 1