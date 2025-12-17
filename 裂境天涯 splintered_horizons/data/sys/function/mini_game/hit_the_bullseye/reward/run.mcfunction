setblock ~ ~ ~ chest replace

execute summon text_display run function sys:mini_game/hit_the_bullseye/reward/text_display/guide

particle totem_of_undying ~ ~ ~ 0 0 0 0.5 20 force @a
particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:block.vault.open_shutter voice @a ~ ~ ~ 1 1
playsound minecraft:block.vault.open_shutter voice @a ~ ~ ~ 1 1

tag @s remove sys.mini_game.hit_the_bullseye.reward.actived