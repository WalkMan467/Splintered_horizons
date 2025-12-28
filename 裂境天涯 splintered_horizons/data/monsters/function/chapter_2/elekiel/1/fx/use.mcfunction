# scoreboard players reset #monsters.chapter_2.elekiel.1.fx particle

# execute rotated ~ 0 run \
function monsters:chapter_2/elekiel/1/fx/range

# summon area_effect_cloud ~ ~1 ~ {Rotation:[0,0],custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:30,Tags:["monsters.chapter_2.elekiel.1.fx"]}
# summon area_effect_cloud ~ ~1 ~ {Rotation:[180,0],custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:30,Tags:["monsters.chapter_2.elekiel.1.fx","reverse"]}

# function monsters:chapter_2/elekiel/1/fx/main



execute \
    positioned 912 60 2018 run \
function particle:space_rupture/use