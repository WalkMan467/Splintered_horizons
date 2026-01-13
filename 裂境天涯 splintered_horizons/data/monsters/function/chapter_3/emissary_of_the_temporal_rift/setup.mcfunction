tag @s remove summon

scoreboard players add #index monster.emissary_of_the_temporal_rift.id 1

scoreboard players operation @s monster.emissary_of_the_temporal_rift.id = #index monster.emissary_of_the_temporal_rift.id
scoreboard players display name @s monster.emissary_of_the_temporal_rift.id [{selector:"@s",bold:false,color:"white"},{text:" "},{score:{name:"@s",objective:"monster.emissary_of_the_temporal_rift.id"}}]

execute \
    store result score @s monster.skill.cast.cd run \
random value 60..100