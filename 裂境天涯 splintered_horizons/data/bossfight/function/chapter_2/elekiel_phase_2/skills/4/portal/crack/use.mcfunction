scoreboard players add #global monster.elekiel_phase_2.skill.4.portal.id 1

summon minecraft:item_display ~ ~ ~ {Tags:["mob.elekiel.2.crack","mob.elekiel.2.display","mob.elekiel.display","summon"], item: {components: {"minecraft:item_model": "mob:elekiel/crack"}, count: 1, id: "minecraft:paper"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0000005f, 4.9999995f, 0.1f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players operation @n[tag=summon,type=item_display,tag=mob.elekiel.2.crack,tag=mob.elekiel.2.display,tag=mob.elekiel.display] monster.elekiel_phase_2.skill.4.portal.id = #global monster.elekiel_phase_2.skill.4.portal.id


# fx
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.25 2
playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 0.75 1.5

particle flash{color:822083583} ~ ~ ~ 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.0 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.0 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-1.5 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-1.5 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-1.0 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-1.0 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-0.5 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-0.5 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~0.0 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~0.0 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~0.5 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~0.5 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~1.0 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~1.0 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~1.5 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~1.5 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.0 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.0 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~-2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~-2.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~-2.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~-1.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~-1.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~-1.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~-1.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~-0.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~-0.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~0.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~0.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~0.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~0.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~1.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~1.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~1.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~1.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~2.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~2.0 0 0 0 0 0 force
particle instant_effect{color:16514816} ~-2.5 ~ ~2.5 0 0 0 0 0 force
particle instant_effect{color:16514816} ~2.5 ~ ~2.5 0 0 0 0 0 force