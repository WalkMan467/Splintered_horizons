execute unless score @s weapon.otherworld_star.timer matches 0 run return 0

particle minecraft:scrape ~ ~1 ~ 0 0 0 15 100
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0.5
tag @s add weapon.otherworld_star.effect.user
function weapons:type/sword/otherworld_star/damage

schedule function weapons:type/sword/otherworld_star/effect_dmg 1t

scoreboard players set #particle.sound_wave.color particle 0
function particle:sound_wave/use
