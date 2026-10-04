# ===================================================
# 地獄之火 單體 150% / pyrosolis single target 150%

    ## Guide [ function weapons:type/sword/pyrosolis/dmg/single ] >>> 地獄之火 單體 150% / pyrosolis single target 150%
    ## Guide [ function weapons:type/sword/pyrosolis/rc/base ] >>> 地獄之火 雙生之火 本體 / pyrosolis twin flame base
    ## Guide [ function dmg_formula:weapons/type/sword/pyrosolis/calculate ] >>> weapons 地獄之火 計算 / weapons pyrosolis calculate

    ## 執行者 : 玩家
    ## 6 格內隨機挑一隻，挑不到就甚麼都不做

# ===================================================

tag @e[sort=random,limit=1,distance=..6,type=!#dummy_mob,type=!player,tag=!weapon.pyrosolis.summon] add dmger

execute \
    unless entity @e[sort=arbitrary,limit=1,tag=dmger,distance=..6] run \
    return run \
return 0

scoreboard players set @s dmg_formula.atk_percentage 150

function dmg_formula:weapons/type/sword/pyrosolis/calculate

particle sweep_attack ~ ~1 ~ 3 3 3 0 3 force @a
