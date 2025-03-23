execute unless score @s weapon.throwing.interval matches ..1 run return fail
scoreboard players set @s player.click.interval 5
clear @s *[custom_data~{type:"drop",weapon:"broken_glass",rc:1b}] 1

playsound minecraft:item.trident.throw voice @a ~ ~1 ~ 1 1

summon minecraft:item_display ~ ~1 ~ {interpolation_duration:20,teleport_duration:1,Tags:["broken_glass.effect","broken_glass.effect.spawn"],brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "minecraft:drop/broken_glass/1"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [-0.65089524f, 0.2762887f, 0.2762887f, 0.65089524f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000001f, 0.99999994f, 0.9999998f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players set @n[tag=broken_glass.effect.spawn] duration 60

execute as @n[tag=broken_glass.effect.spawn] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

tag @n[tag=broken_glass.effect.spawn,limit=1] remove broken_glass.effect.spawn

function weapons:type/drop/broken_glass/loop