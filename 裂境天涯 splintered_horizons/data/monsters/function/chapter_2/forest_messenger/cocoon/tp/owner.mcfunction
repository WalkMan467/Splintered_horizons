# ===================================================
# 繭 傳送 擁有者回血 / cocoon teleport owner heal

    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/owner ] >>> 繭 傳送 擁有者回血 / cocoon teleport owner heal
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/use ] >>> 繭 傳送 執行 / cocoon teleport execute

# ===================================================

tag @s remove monster.forest_messenger.1.actived

effect give @s[type=#minecraft:undead] instant_damage 1 3 true
effect give @s[type=!#minecraft:undead] instant_health 1 3 true

effect give @s absorption 10 1 true

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 0.5
particle flash{color:[0.302,1.000,0.000,1.00]} ~ ~1 ~ 0 0 0 0 1 normal @a