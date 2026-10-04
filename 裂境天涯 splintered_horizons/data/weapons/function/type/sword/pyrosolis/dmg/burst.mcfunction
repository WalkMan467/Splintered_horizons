# ===================================================
# 地獄之火 範圍 250% / pyrosolis burst 250%

    ## Guide [ function weapons:type/sword/pyrosolis/dmg/burst ] >>> 地獄之火 範圍 250% / pyrosolis burst 250%
    ## Guide [ function weapons:type/sword/pyrosolis/rc/burning ] >>> 地獄之火 雙生之火 激活強化 / pyrosolis twin flame empowered
    ## Guide [ function weapons:type/sword/pyrosolis/summon/boom ] >>> 地獄之火 烈陽之影 天火之罰 / pyrosolis shade heavenly punishment
    ## Guide [ function dmg_formula:weapons/type/sword/pyrosolis/burst/calculate ] >>> weapons 地獄之火 範圍 計算 / weapons pyrosolis burst calculate

    ## 執行者 : 玩家
    ## 位置可能是玩家，也可能是【烈陽之影】消失的地方，所以這裡只管 6 格不管誰在放

# ===================================================

tag @e[distance=..6,type=!#dummy_mob,type=!player,tag=!weapon.pyrosolis.summon] add dmger

execute \
    unless entity @e[sort=arbitrary,limit=1,tag=dmger,distance=..6] run \
    return run \
return 0

scoreboard players set @s dmg_formula.atk_percentage 250

function dmg_formula:weapons/type/sword/pyrosolis/burst/calculate

particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
particle minecraft:wax_on ~ ~1 ~ 3 2 3 40 150 normal @a
