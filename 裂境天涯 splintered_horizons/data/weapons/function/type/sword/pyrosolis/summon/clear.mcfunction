# ===================================================
# 地獄之火 烈陽之影 收場 / pyrosolis shade cleanup

    ## Guide [ function weapons:type/sword/pyrosolis/summon/clear ] >>> 地獄之火 烈陽之影 收場 / pyrosolis shade cleanup
    ## Guide [ function weapons:type/sword/pyrosolis/summon/use ] >>> 地獄之火 召喚 烈陽之影 / pyrosolis summon sunfire shade
    ## Guide [ function weapons:type/sword/pyrosolis/summon/end ] >>> 地獄之火 烈陽之影 消失 / pyrosolis shade expire

    ## 執行者 : 玩家
    ## 只收自己那隻

# ===================================================

scoreboard players operation #owner weapon.pyrosolis.summon.id = @s weapon.pyrosolis.summon.id

execute \
    as @e[tag=weapon.pyrosolis.summon,type=item_display] \
    if score @s weapon.pyrosolis.summon.id = #owner weapon.pyrosolis.summon.id run \
kill @s
