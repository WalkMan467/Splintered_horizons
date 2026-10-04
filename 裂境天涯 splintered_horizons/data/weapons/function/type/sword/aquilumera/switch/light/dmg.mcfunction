# ===================================================
# 水之魔劍 水鏡之光 切換 light 傷害 / sword aquilumera switch light damage

    ## Guide [ function weapons:type/sword/aquilumera/switch/light/dmg ] >>> 水之魔劍 水鏡之光 切換 light 傷害 / sword aquilumera switch light damage
    ## Guide [ function dmg_formula:weapons/type/sword/aquilumera/calculate ] >>> weapons 水之魔劍 水鏡之光 計算 / weapons sword aquilumera calculate
    ## Guide [ function weapons:type/sword/aquilumera/reflection/add ] >>> 水之魔劍 水鏡之光 倒影 疊加 / sword aquilumera reflection add
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

# 執行者 : 玩家
#
# 150% 基礎傷害 + 1 層倒影，打 10 次
# dmg
tag @e[type=!#dummy_mob,distance=..8,limit=1,sort=random,type=!player] add dmger

# 技能這一下也會讓怪物 HurtTime 變成 10 ; 蓋上這一 tick 的戳記，
# 同一 tick 裡玩家普攻別隻怪時，passive/hit 才不會把這隻的倒影也順便吃掉

scoreboard players operation @e[tag=dmger,distance=..8,type=!player] weapon.aquilumera.reflection.hit = #gametime global.main

# 倒影先疊再打，這一下打死的話轉移也吃得到這一層
# 型態記在怪身上給粒子挑顏色 : 1 = 水、2 = 光

scoreboard players set #form weapon.aquilumera.reflection.form 2


execute \
    as @e[tag=dmger,distance=..8,type=!player] run \
function weapons:type/sword/aquilumera/reflection/add

scoreboard players set @s dmg_formula.atk_percentage 150
function dmg_formula:weapons/type/sword/aquilumera/calculate

# particle
particle minecraft:sweep_attack ~ ~1 ~ 5 5 5 0 5 force @a
playsound minecraft:item.shield.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~1 ~ 0.3 2

# reset
scoreboard players remove @s weapon.aquilumera_passive 1
