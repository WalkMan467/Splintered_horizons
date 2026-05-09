particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.extinguish voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1

function monsters:chapter_3/sunfire_emissary/death/explosion/run

kill @s[tag=monsters.sunfire_emissary.fx.main,type=area_effect_cloud]