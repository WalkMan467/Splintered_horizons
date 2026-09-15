# ===================================================
# 弓 終焉凝視者 終焉技 開眼 / bow the endwatcher ultimate awaken

    ## Guide [ function weapons:type/bow/the_endwatcher/ultimate/use ] >>> 弓 終焉凝視者 終焉技 開眼 / bow the endwatcher ultimate awaken
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/fire ] >>> 弓 終焉凝視者 右鍵 放箭 / bow the endwatcher right click fire
    ## Guide [ function weapons:type/bow/the_endwatcher/ultimate/end ] >>> 弓 終焉凝視者 終焉技 開眼結束 / bow the endwatcher ultimate awaken end

# ===================================================

# 終焉迴光
#
# 執行者 : 玩家
# 消耗 1 顆終焉之眼（player.ultimate 絕對時間制，CD 50 秒），共鳴值歸零，進入開眼。
# 累積傷害不歸零，開眼期間就是靠它一次次釋放。

function weapons:rc/cd {id:"player.ultimate", cd:1000}

scoreboard players set @s weapon.the_endwatcher.awaken 5
scoreboard players set @s weapon.the_endwatcher.resonance 0

scoreboard players set @s player.actionbar.weapon.the_endwatcher 40

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle [{"translate":"weapon.the_endwatcher.awaken","fallback":"開眼","color":"#CE0000","bold":true}]
title @s times 10 20 10

particle minecraft:flash{color:[0.808,0.000,0.000,1.00]} ~ ~1 ~ 0 0 0 1 2 normal @a[scores={main.light_sensitivity=0}]
particle dust_color_transition{from_color:[0.808,0.000,0.000],to_color:[0.000,0.000,0.000],scale:2} ~ ~1 ~ 1 1 1 0 120 normal @a

playsound minecraft:entity.ender_dragon.growl voice @a ~ ~1 ~ 0.7 1.8
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 0.8 1.4

execute \
    if items entity @s weapon.mainhand bow[minecraft:custom_data~{weapon:"the_endwatcher"}] run \
item modify entity @s weapon.mainhand {type:"minecraft:set_custom_model_data",flags:{values:[1b],mode:"replace_all"}}