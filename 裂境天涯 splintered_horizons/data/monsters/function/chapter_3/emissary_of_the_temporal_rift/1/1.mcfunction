data merge entity @s {Glowing:1b,billboard: "vertical", brightness: {block: 15, sky: 15}, item: {count: 1, id: "minecraft:ominous_trial_key"}, teleport_duration:1, interpolation_duration:5, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 3.0f, 0.0f]}}

tag @s add chapter_3.emissary_of_the_temporal_rift.key

scoreboard players set @s monster.emissary_of_the_temporal_rift.key.timer 300

scoreboard players operation @s monster.emissary_of_the_temporal_rift.id = @n[tag=chapter_3.emissary_of_the_temporal_rift.key.temp,distance=..5,tag=monsters.emissary_of_the_temporal_rift,type=skeleton] monster.emissary_of_the_temporal_rift.id
scoreboard players display name @s monster.emissary_of_the_temporal_rift.id [{text:"[",color:"white"},{selector:"@n[type=skeleton,tag=chapter_3.emissary_of_the_temporal_rift.key.temp,distance=..5,tag=monsters.emissary_of_the_temporal_rift]",bold:true,color:"gold"},{text:"]",color:"white"},{text:" "},{text:"Summoned Creature",color:"white"}]