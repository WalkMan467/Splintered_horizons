# ===================================================
# 鐮 終焉之墟 右鍵 blade 階段 1 射線 final / scythe ruins of the finality right click blade step 1 raycast final

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/final ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 射線 final / scythe ruins of the finality right click blade step 1 raycast final
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/use ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 觸發 / scythe ruins of the finality right click blade step 1 activate
    ## Guide [ function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate ] >>> weapons 鐮 終焉之墟 計算 / weapons scythe ruins of the finality calculate
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/detect ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 射線 偵測 / scythe ruins of the finality right click blade step 1 raycast detect

# ===================================================


execute \
    as @e[distance=..3,type=!#minecraft:dummy_mob,type=!player] run \
effect give @s glowing 1 255 true
tp @p[tag=weapon.ruins_of_the_finality.blade.1.user] ~ ~ ~

execute \
    as @p[tag=weapon.ruins_of_the_finality.blade.1.user] at @s run \
function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/use

function aj:chain_lock/summon {args: {animation: 'unlock', start_animation: true}}
function aj:ruins_of_the_finality_skill/summon {args: {animation: 'skills_2', start_animation: true}}

tag @e[distance=..3,type=!#minecraft:dummy_mob,type=!player] add dmger
tag @p[tag=weapon.ruins_of_the_finality.blade.1.user] add atker
scoreboard players set @p[tag=atker,tag=weapon.ruins_of_the_finality.blade.1.user] dmg_formula.atk_percentage 150

execute \
    as @p[tag=weapon.ruins_of_the_finality.blade.1.user] run \
function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate

particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100
playsound minecraft:voice.ruins_of_the_end_hurt voice @a ~ ~1 ~ 1 0.75
playsound minecraft:voice.deep_base voice @a ~ ~1 ~ 1 1

scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 0
tag @p[tag=weapon.ruins_of_the_finality.blade.1.user] remove weapon.ruins_of_the_finality.blade.1.user