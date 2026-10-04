# ===================================================

# Rollback


    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================


execute \
    if entity @s[gamemode=creative] run \
return 0

execute \
    if entity @s[gamemode=spectator] run \
return 0

scoreboard players set @s sys.fall_immunity 5
scoreboard players set @s sys.exclude_display_world_area_title 5

# 同一 tick 先把屬性補上，不要等 sys 迴圈
#
# sys:attachable_component/fall_immunity/timer 才是平常維持這個 modifier 的地方，
# 但 main:tick 裡 `function sys:main` 排在 `main:guide/player` 前面，
# 而回朔是從 guide/player 這條線下來的 —— 光設分數的話，屬性要等到
# 下一 tick 的 sys 階段才上身，比玩家落地結算晚了一步，摔傷就進來了
#
# modifier id 跟 timer 用的同一個，之後由 timer 接手維持、由 fall_immunity/reset 移除
# 重複 add 同一個 id 會靜默失敗，不影響 timer 後續每 tick 的補呼叫

attribute @s safe_fall_distance modifier add sys.fall_immunity 1024 add_value

title @s times 0 20 20
title @s title {text:"\uE000","font":"minecraft:screen","color":"white",shadow_color:0}
title @s subtitle ""

playsound minecraft:entity.player.big_fall voice @a ~ ~1 ~ 1 1
particle minecraft:dust_pillar{block_state:cobbled_deepslate} ~ ~1 ~ 0.75 0.5 0.75 0.5 50 normal @a

# Retrieved Player Rollback Position
function players:void_protection/rollback/retrieve_data

# Using a macro to execute a rollback
function players:void_protection/rollback/use.guide with storage player.data void_protection.rollback

damage @s 8 fall
effect give @s hunger 1 255 true