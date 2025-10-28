summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},UUID:[I;551,321,2211,521],Radius:0f,Duration:1}

spreadplayers ~ ~ 2 10 false 00000227-0000-0141-0000-08a300000209

execute as 00000227-0000-0141-0000-08a300000209 at @s positioned ~ ~1.5 ~ rotated ~ 0 run function mob:elekiel/1/mysterray/use
kill 00000227-0000-0141-0000-08a300000209