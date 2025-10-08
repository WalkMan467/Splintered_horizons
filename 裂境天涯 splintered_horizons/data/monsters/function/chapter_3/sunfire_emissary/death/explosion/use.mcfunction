kill @s[tag=monsters.sunfire_emissary.fx.main,type=area_effect_cloud]

particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.extinguish voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1

function monsters:chapter_3/sunfire_emissary/death/explosion/summon

execute as @a[distance=..5] at @s run function carto_event:api/create_single_entity_event {event:"custom_statuses/oiled",duration:200,delay:0,parameters:{owner:"@n[tag=monsters.sunfire_emissary,type=husk]",damage:2,tick_rate:18,warmup_time:20,cauterize_threshold:100,cauterize_percent:50,wildfire_range:2,wildfire_targets:4,wildfire_time:40,tick_command:"",proc_command:""},merge_behavior:"custom"}
execute as @a[distance=..5] run damage @s 6 explosion by @n[tag=monsters.sunfire_emissary,type=husk,distance=..7]