# ===================================================
# 深淵射手 技能1 收回爆裂箭 / explosion arrow skeleton skill 1 unload arrow

    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/1 ] >>> 深淵射手 技能1 收回爆裂箭 / explosion arrow skeleton skill 1 unload arrow
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/main ] >>> 深淵射手 技能1 分鏡 / explosion arrow skeleton skill 1 timeline
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/cast/end ] >>> 深淵射手 施法 結束並重設冷卻 / explosion arrow skeleton cast end

# ===================================================

item replace entity @s weapon.offhand with arrow

data modify entity @s Glowing set value 0b
playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.75
particle dust{color:[1.000,0.922,0.988],scale:1.5} ~ ~1 ~ 0.5 0.75 0.5 1 40 normal

function monsters:chapter_1/explosion_arrow_skeleton/cast/end