execute unless score @s weapon.throwing.interval matches ..1 run return fail
scoreboard players set @s weapon.throwing.interval 10

scoreboard players operation #weapons.hook.user.id weapon.hook.user.id = #weapons.hook.effect.point.id weapon.hook.effect.id

scoreboard players add #weapons.hook.user.id weapon.hook.user.id 1
scoreboard players operation @s weapon.hook.user.id = #weapons.hook.user.id weapon.hook.user.id

clear @s *[custom_data~{type:"drop",weapon:"hook",rc:1b}] 1

playsound minecraft:item.trident.throw voice @a ~ ~1 ~ 1 1

summon minecraft:item_display ~ ~1 ~ {Tags:["hook.effect","hook.effect.spawn"],brightness: {block: 15, sky: 15}, interpolation_duration: 20, item: {components: {"minecraft:item_model": "minecraft:iron_hoe"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 1, transformation: {left_rotation: [-0.59636784f, 0.37992817f, 0.59636784f, -0.37992817f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000002f, 0.99999976f, 0.9999995f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players set @n[tag=hook.effect.spawn] duration 60

execute as @n[tag=hook.effect.spawn] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

tag @n[tag=hook.effect.spawn,limit=1] remove hook.effect.spawn

function weapons:type/drop/hook/loop