scoreboard players set @s player.click.interval 10

scoreboard players set @s player.disable.elytra_switch 60
scoreboard players add #weapons.hook.user.id weapon.hook.user.id 1
scoreboard players operation @s weapon.hook.user.id = #weapons.hook.user.id weapon.hook.user.id

clear @s *[custom_data~{type:"drop",weapon:"hook",rc:1b}] 1

playsound minecraft:item.trident.throw voice @a ~ ~1 ~ 1 1

# 鉤子設定
summon item_display ~ ~1 ~ {Tags:["hook.effect","hook.effect.spawn"],brightness: {block: 15, sky: 15}, interpolation_duration: 20, item: {components: {"minecraft:item_model": "minecraft:iron_hoe"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 1, transformation: {left_rotation: [-0.59636784f, 0.37992817f, 0.59636784f, -0.37992817f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1f, 1f, 1f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players set @n[type=item_display,tag=hook.effect.spawn] duration 60
scoreboard players operation @n[type=item_display,tag=hook.effect.spawn] weapon.hook.user.id = #weapons.hook.user.id weapon.hook.user.id

execute as @n[type=item_display,tag=hook.effect.spawn] run rotate @s ~ ~

tag @n[type=item_display,tag=hook.effect.spawn] remove hook.effect.spawn

function weapons:type/drop/hook/loop