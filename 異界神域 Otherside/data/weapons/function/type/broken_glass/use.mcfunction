playsound minecraft:item.trident.throw voice @a ~ ~1 ~ 1 1

summon minecraft:item_display ~ ~1 ~ {teleport_duration:1,Tags:["broken_glass.effect","broken_glass.effect.spawn"],brightness: {block: 15, sky: 15}, item: {count: 1, player.id: "minecraft:prismarine_shard"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999994f, 0.9999999f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players set @n[tag=broken_glass.effect.spawn] duration 60

execute as @n[tag=broken_glass.effect.spawn] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

tag @n[tag=broken_glass.effect.spawn,limit=1] remove broken_glass.effect.spawn

function weapons:type/broken_glass/loop