# ===================================================
# 弓 終焉凝視者 終焉技 開眼結束 / bow the endwatcher ultimate awaken end

    ## Guide [ function weapons:type/bow/the_endwatcher/ultimate/end ] >>> 弓 終焉凝視者 終焉技 開眼結束 / bow the endwatcher ultimate awaken end
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/release ] >>> 弓 終焉凝視者 箭矢 釋放累積傷害 / bow the endwatcher arrow release stored damage
    ## Guide [ function weapons:type/bow/the_endwatcher/ultimate/use ] >>> 弓 終焉凝視者 終焉技 開眼 / bow the endwatcher ultimate awaken

# ===================================================

# 執行者 : 玩家
#
# 釋放 5 次之後退出開眼。剩下沒放完的累積傷害會留著，可以繼續往上疊。

scoreboard players set @s weapon.the_endwatcher.awaken 0

title @s times 0 15 10
title @s title ""
title @s subtitle ""

particle dust{color:[0.200,0.000,0.000],scale:1.5} ~ ~1 ~ 0.5 0.8 0.5 0 40 normal @a
playsound minecraft:block.beacon.deactivate voice @s ~ ~1 ~ 0.8 1.6

execute \
    if items entity @s weapon.mainhand bow[minecraft:custom_data~{weapon:"the_endwatcher"}] run \
item modify entity @s weapon.mainhand {type:"minecraft:set_custom_model_data",flags:{values:[0b],mode:"replace_all"}}