# ===================================================
# 鐮 終焉之墟 右鍵 動畫 階段 2 觸發 / scythe ruins of the finality right click animation step 2 activate

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/animation/2/use ] >>> 鐮 終焉之墟 右鍵 動畫 階段 2 觸發 / scythe ruins of the finality right click animation step 2 activate
    ## Guide [ function players:hide/true ] >>> hide 成立 / hide true branch
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/end ] >>> 鐮 終焉之墟 效果 結束 / scythe ruins of the finality effect finish
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/use ] >>> 鐮 終焉之墟 右鍵 觸發 / scythe ruins of the finality right click activate

# ===================================================

tp @e[tag=weapon.ruins_of_the_finality.effect.chain] ~ -255 ~
kill @e[tag=weapon.ruins_of_the_finality.effect.chain]


execute \
    as @e[tag=ruins_of_the_end.skills_2.play] run \
function aj:ruins_of_the_end_skill/remove/this

tag @s remove weapon.ruins_of_the_finality.screen
tag @s add animation
scoreboard players set @s weapon.ruins_of_the_finality.blade.animation 27
scoreboard players set @s player.animation.lock 27

function players:hide/true {duration:27}

scoreboard players set @s weapon.ruins_of_the_finality.effect.count 0
scoreboard players set @s weapon.ruins_of_the_finality.effect.count.delay 0

title @s times 0 0 10
title @s title {"translate":"\uE000","font":"minecraft:screen"}
title @s subtitle ""

tag @s remove weapon.ruins_of_the_finality.animation.player
kill @e[type=creeper,tag=aj.stellar.camera_2]


playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.65

tag @s add weapon.ruins_of_the_finality.animation.player
# Animation
function aj:ruins_of_the_finality_skill/summon {args: {animation: 'skills', start_animation: true}}

# Set GameMode
gamemode spectator @s
spectate @n[tag=aj.ruins_of_the_finality_skill.camera]