scoreboard players reset $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd

summon interaction ~ ~ ~ {UUID:[I; 21, 2, 55, 128],width:1f,height:2f,Tags:["monster.chapter_2.elekiel.3","monster.chapter_2.elekiel.3.act"],Passengers:[{id:"minecraft:block_display",Glowing:1b,interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0.7071068f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,-1.5625f,0.5f],scale:[0.24999999f,0.5000001f,0.24999999f]},block_state:{id:"minecraft:blackstone_stairs",properties:{facing:"east",half:"top",shape:"outer_left",waterlogged:"false"}}},{id:"minecraft:block_display",Glowing:1b,interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0.7071068f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0.25f,-1.0625f,0.5625f],scale:[0.24999999f,0.5000001f,0.24999999f]},block_state:{id:"minecraft:blackstone_stairs",properties:{facing:"west",half:"bottom",shape:"outer_left",waterlogged:"false"}}},{id:"minecraft:block_display",Glowing:1b,interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0.7071068f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[-0.4375f,-1.5625f,-0.25f],scale:[0.24999997f,0.5000001f,0.24999997f]},block_state:{id:"minecraft:blackstone_stairs",properties:{facing:"west",half:"top",shape:"outer_left",waterlogged:"false"}}},{id:"minecraft:block_display",Glowing:1b,interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0.7071068f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.0625f,-0.3125f],scale:[0.24999999f,0.5000001f,0.24999999f]},block_state:{id:"minecraft:blackstone_stairs",properties:{facing:"east",half:"bottom",shape:"outer_left",waterlogged:"false"}}},{id:"minecraft:block_display",Glowing:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.3639041f,0.11780388f,0.2858028f,0.8786427f],right_rotation:[0f,0f,0f,1f],translation:[-0.20185107f,-0.64690268f,-0.3538018f],scale:[0.5f,0.49999994f,0.49999994f]},block_state:{id:"minecraft:crying_obsidian"}},{id:"minecraft:block_display",Glowing:1b,interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-1.8125f,-0.25f],scale:[0.5f,0.75f,0.5f]},block_state:{id:"minecraft:blackstone_wall",properties:{north:"none",south:"none",east:"none",west:"none",up:"true",waterlogged:"false"}}},{id:"minecraft:text_display",Glowing:1b,UUID:[I;55,121,21,1],billboard:"vertical",interpolation_duration:1,teleport_duration:1,line_width:200,text_opacity:-1,default_background:1b,shadow:0b,see_through:0b,alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:{"color":"green","text":"░░░░░░░░░░░░░░░"}},{id:"minecraft:text_display",billboard:"vertical",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0.25f],scale:[3f,3f,3f]},text:{"bold":false,"color":"white","font":"minecraft:icon","italic":false,"text":"\uE003"},background:16711680}]}

bossbar add chapter_2.elekiel.3 {"translate": "monsters.elekiel.3.bossbar"}
bossbar set chapter_2.elekiel.3 max 15
bossbar set chapter_2.elekiel.3 color green
bossbar set chapter_2.elekiel.3 style notched_20

bossbar set chapter_2.elekiel.3 players @a[distance=..60]

function bossfight:chapter_2/elekiel/skills/3/fx
function bossfight:chapter_2/elekiel/skills/3/tp


execute \
    as @a at @s run \
function bossfight:chapter_2/elekiel/skills/3/save_pos

scoreboard players set global monster.elekiel.3.timer 15

execute \
    positioned 912 55 2018 \
    as @a[sort=arbitrary,distance=..60] at @s run \
function bossfight:chapter_2/elekiel/skills/3/death_tips