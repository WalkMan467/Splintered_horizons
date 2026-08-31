# ===================================================
# 烈陽使者 技能1 點燃玩家 / sunfire emissary skill 1 ignite

    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/fire/use ] >>> 烈陽使者 技能1 點燃玩家 / sunfire emissary skill 1 ignite
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/damage/use ] >>> 烈陽使者 技能1 落點傷害 / sunfire emissary skill 1 impact damage
    ## Guide [ function players:effect/ignite/use ] >>> use

# ===================================================

execute \
    if score @s sys.dummy_mob matches 1.. run \
return 0

execute \
    if entity @s[gamemode=!survival,gamemode=!adventure] run \
return 0

function players:effect/ignite/use {duration:3}