summon minecraft:item_display ~ ~0.5 ~ {Glowing:1b,Tags:["summon","monsters.elekiel.1.abyss_crystal"],brightness: {block: 15, sky: 15}, glow_color_override: 13893887, item: {count: 1, id: "minecraft:echo_shard"}, transformation: {left_rotation: [0.66232723f, -0.24763404f, 0.24763404f, 0.66232723f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5000001f, 1.5000012f], translation: [-0.05f, 0.0f, -0.05f]}}

rotate @n[tag=monsters.elekiel.1.abyss_crystal,type=item_display,tag=summon] facing entity @r[gamemode=!spectator]

data modify entity @n[tag=monsters.elekiel.1.abyss_crystal,type=item_display,tag=summon] teleport_duration set value 1

scoreboard players set @n[tag=monsters.elekiel.1.abyss_crystal,type=item_display,tag=summon] duration 100

tag @n[tag=monsters.elekiel.1.abyss_crystal,type=item_display,tag=summon] remove summon