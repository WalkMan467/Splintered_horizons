# ===================================================
# 鐮 深淵雙重火 效果 觸發 / scythe flame of abyss effect activate

    ## Guide [ function weapons:type/scythe/flame_of_abyss/effect/use ] >>> 鐮 深淵雙重火 效果 觸發 / scythe flame of abyss effect activate
    ## Guide [ function weapons:type/scythe/flame_of_abyss/effect/fx ] >>> 鐮 深淵雙重火 效果 特效 / scythe flame of abyss effect visuals

# ===================================================


# 第一次使用先建立 CD 分數 / Initialize the cd score on first use

execute \
    on attacker \
    unless score @s weapon.flame_of_abyss.effect.cd matches -2147483648..2147483647 run \
    return run \
execute \
    on attacker run \
function weapons:rc/cd {id:"weapon.flame_of_abyss.effect.cd", cd:1}

execute \
    on attacker \
    unless score #gametime global.main >= @s weapon.flame_of_abyss.effect.cd run \
return 0

scoreboard players add @e[distance=..4,type=!player,type=!#minecraft:dummy_mob] weapon.flame_of_abyss.effect 2

execute \
    as @e[distance=..4,type=!player,type=!#minecraft:dummy_mob] at @s run \
particle dust_color_transition{from_color:[0.416,0.000,0.780],scale:2,to_color:[1.000,0.000,1.000]} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal

execute \
    on attacker run \
function weapons:rc/cd {id:"weapon.flame_of_abyss.effect.cd", cd:1}

scoreboard players reset #weapon.flame_of_abyss.fx particle
function weapons:type/scythe/flame_of_abyss/effect/fx

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1