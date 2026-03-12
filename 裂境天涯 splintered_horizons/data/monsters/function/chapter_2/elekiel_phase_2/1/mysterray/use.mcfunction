
# mysterray = mystery array的縮寫，中文翻譯就是迷陣
summon item_display ~ ~-0.5 ~ {start_interpolation:0,Tags:["monster.elekiel_phase_2.1.mysterray","summon","monster.elekiel_phase_2.1.display","mob.elekiel.display"],Passengers:[{id:"minecraft:slime",CustomName:{"translate":"monster.elekiel_phase_2.1.mysterray","fallback":"三角迷陣",color:"yellow"},Silent:1b,NoAI:1b,Size:0,Tags:["monster.elekiel_phase_2.1.display","mob.elekiel.display"],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:scale",base:3}]},{id:"minecraft:text_display",view_range:2f,shadow_strength:0f,billboard:"center",line_width:200,default_background:0b,shadow:0b,see_through:0b,alignment:"center",Tags:["monster.elekiel_phase_2.1.text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1.5f,1.5f,1.5f]},background:1073741824},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,Passengers:[{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,-0.38268346f,0.9238795f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.3125f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"minecraft:sword/morning_light/3"}}},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[-0.27059808f,0.65328145f,0.27059808f,-0.65328145f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.3125f,0f],scale:[1f,0.99999994f,0.9999999f]},item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"minecraft:sword/morning_light/3"}}},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.70105743f,-0.09229618f,0.7010573f,-0.09229609f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2125f,-0.6630796f],scale:[1.0000007f,1f,0.9999998f]},item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"minecraft:sword/morning_light/3"}}},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.80010325f,0.33141363f,0.1913417f,-0.46193972f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2125f,-0.6630796f],scale:[1.0000002f,0.99999994f,1f]},item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"minecraft:sword/morning_light/3"}}},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.5624223f,0.73296285f,0.23296294f,0.30360323f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.2125f,0.5f],scale:[0.9999997f,1f,1.0000006f]},item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"minecraft:sword/morning_light/3"}}},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.12940954f,0.5536033f,0.8124223f,0.12940955f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.2125f,0.5f],scale:[0.9999995f,0.99999905f,0.99999887f]},item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"minecraft:sword/morning_light/3"}}},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.23296283f,0.30360317f,0.56242234f,0.73296285f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.2125f,0.5f],scale:[0.99999976f,1f,1.000001f]},item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"minecraft:sword/morning_light/3"}}},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[-0.48296297f,0.29995018f,0.6659756f,0.48296297f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.2125f,0.5f],scale:[0.99999976f,0.99999934f,0.9999994f]},item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"minecraft:sword/morning_light/3"}}},{id:"minecraft:item_display",interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[-0.10314359f,-0.1439359f,0.39698547f,0.9005811f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0.2500006f,0.2500004f,0.25000054f]},item:{id:"minecraft:yellow_stained_glass",count:1}}],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.4091924f,-0.33601233f,0.16600023f,0.8319262f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0.2500003f,0.25000018f,0.25000015f]},item:{id:"minecraft:yellow_stained_glass",count:1}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"air"}}}

execute \
    as @n[distance=0..,tag=summon,type=item_display] \
    on passengers \
    if entity @s[type=slime] run \
function monsters:chapter_2/elekiel_phase_2/1/mysterray/slime/use

# fx
playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 0.5 0
playsound minecraft:entity.warden.death master @a ~ ~ ~ 0.5 1
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.25 1

particle instant_effect{color:16383232,power:1.5} ~ ~ ~ 0 0 0 0.0001 30 force
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use