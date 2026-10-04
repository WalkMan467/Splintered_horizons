# 執行者 : 冰塊展示實體

    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/orphan/detect ] >>> detect

    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/orphan/dimension ] >>> dimension

    ## Guide [ function sys:attachable_component/skills_freeze/reset ] >>> reset


# 冰塊不是騎在怪身上的，是每 tick 把怪 tp 到冰塊上，所以只能靠 ID 找主人
# 半徑放寬到 32 是刻意的：寧可多找一下，也不要把還有主人的冰塊誤殺

scoreboard players operation #orphan sys.skills_freeze.id = @s sys.skills_freeze.id
scoreboard players set #found sys.skills_freeze.id 0

execute \
    as @e[sort=arbitrary,distance=..32,tag=sys.skills_freeze,type=!player,type=!#minecraft:dummy_mob] \
    if score @s sys.skills_freeze.id = #orphan sys.skills_freeze.id run \
scoreboard players set #found sys.skills_freeze.id 1


execute \
    if score #found sys.skills_freeze.id matches 1 run \
    return run \
tag @s remove sys.skills_freeze.display.orphan


# 連續兩次都找不到主人才動手 生成當下主人可能還沒拿到分數，
# 只判一次會把剛長出來的冰塊當成孤兒殺掉

execute \
    if entity @s[tag=sys.skills_freeze.display.orphan] run \
    return run \
kill @s

tag @s add sys.skills_freeze.display.orphan
