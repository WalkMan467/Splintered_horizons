# ===================================================
# 暗蝕的烈陽 技能1 點燃玩家 / sun of the abyssal eclipse skill 1 ignite

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/fire/use ] >>> 暗蝕的烈陽 技能1 點燃玩家 / sun of the abyssal eclipse skill 1 ignite
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/damage/use ] >>> 暗蝕的烈陽 技能1 落點傷害 / sun of the abyssal eclipse skill 1 impact damage
    ## Guide [ function players:effect/ignite/use ] >>> use

# ===================================================

execute \
    if entity @s[gamemode=!survival,gamemode=!adventure] run \
return 0

function players:effect/ignite/use {duration:3}