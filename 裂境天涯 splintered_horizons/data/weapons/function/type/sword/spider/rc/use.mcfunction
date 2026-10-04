# ===================================================
# 劍 蜘蛛 右鍵 觸發 / sword spider right click activate

    ## Guide [ function weapons:type/sword/spider/rc/use ] >>> 劍 蜘蛛 右鍵 觸發 / sword spider right click activate
    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function dmg_formula:weapons/type/sword/spider/calculate ] >>> weapons 劍 蜘蛛 計算 / weapons sword spider calculate

# ===================================================

scoreboard players add @s weapon.spider.cd 0


execute \
    unless score @s weapon.spider.cd matches ..0 \
    unless score @s player.click.interval matches 1.. run \
function weapons:rc/failure/skill_use_failed with entity @s SelectedItem.components."minecraft:custom_data"

execute \
    unless score @s weapon.spider.cd matches ..0 run \
return 0

scoreboard players set @s player.click.interval 20

title @s title {"text":"\uE010","font":"minecraft:screen"}
title @s subtitle ""
title @s times 5 5 20

playsound minecraft:voice.violin voice @s ~ ~1 ~ 0.5 1
playsound minecraft:entity.generic.explode voice @s ~ ~1 ~ 0.5 1
playsound minecraft:entity.player.attack.sweep voice @s ~ ~1 ~ 1 0.75
playsound minecraft:voice.ruins_of_the_end_hurt voice @s ~ ~1 ~ 0.5 1.5

scoreboard players set @s weapon.spider.cd 400
scoreboard players set @s weapon.effect.chaotic_thunder 100

tag @e[type=!player,type=!#dummy_mob,distance=..4] add dmger
tag @s[tag=!atker] add atker
scoreboard players set @s[tag=atker] dmg_formula.atk_percentage 200

function dmg_formula:weapons/type/sword/spider/calculate