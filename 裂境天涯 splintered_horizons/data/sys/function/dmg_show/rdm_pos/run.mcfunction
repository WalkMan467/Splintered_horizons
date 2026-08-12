$execute \
    if score @s sys.dmg_show.hpmax matches 0.. \
    unless entity @s[tag=monster.target_dummy] \
    positioned ~ ~-1 ~ anchored eyes run \
summon text_display ^$(x) ^$(y) ^$(z) {see_through: 1b,brightness: {block: 15, sky: 15},Tags:[wma, sys.dmg_show.dummy.show],alignment:"left",billboard:"center",shadow:0b,background:0,text:["",{"text":"-","color":"#F77373"},{"nbt":"dmg","storage":"wma:data","interpret":false,"color":"#F77373"},{"text":"❤","color":"#F77373"}],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],teleport_duration:1}

$execute \
    if score @s sys.dmg_show.hpmax matches 0.. \
    if entity @s[tag=monster.target_dummy] \
    anchored eyes run \
summon text_display ^$(x) ^$(y) ^$(z) {see_through: 1b,brightness: {block: 15, sky: 15},Tags:[wma, sys.dmg_show.dummy.show],alignment:"left",billboard:"center",shadow:0b,background:0,text:["",{"text":"-","color":"#F77373"},{"nbt":"dmg","storage":"wma:data","interpret":false,"color":"#F77373"},{"text":"❤","color":"#F77373"}],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],teleport_duration:1}

$execute \
    if score @s sys.dmg_show.hpmax matches ..0 \
    unless entity @s[tag=monster.target_dummy] \
    positioned ~ ~-1 ~ anchored eyes run \
summon text_display ^$(x) ^$(y) ^$(z) {see_through: 1b,brightness: {block: 15, sky: 15},Tags:[wma, sys.dmg_show.dummy.show],alignment:"left",billboard:"center",shadow:0b,background:0,text:["",{"text":"+","color":"#99FF99"},{"nbt":"dmg","storage":"wma:data","interpret":false,"color":"#99FF99"},{"text":"❤","color":"#99FF99"}],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],teleport_duration:1}

execute \
    if entity @s[tag=monster.target_dummy] \
    if score @s sys.dmg_show.hpmax matches 0.. run \
playsound minecraft:entity.skeleton.hurt voice @a ~ ~1 ~ 1 1

execute \
    if entity @s[tag=monster.target_dummy] \
    if score @s sys.dmg_show.hpmax matches 0.. run \
particle block{block_state:{id:"minecraft:hay_block",properties:{axis:"y"}}} ~ ~1.25 ~ 0.5 0.5 0.5 0 20 force @a