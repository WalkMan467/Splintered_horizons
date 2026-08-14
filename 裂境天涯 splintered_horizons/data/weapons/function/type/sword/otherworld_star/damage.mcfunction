# ===================================================
# 劍 異界晨星 傷害 / sword otherworld star damage

    ## Guide [ function weapons:type/sword/otherworld_star/damage ] >>> 劍 異界晨星 傷害 / sword otherworld star damage
    ## Guide [ function dmg_formula:weapons/type/sword/otherworld_star/calculate ] >>> weapons 劍 異界晨星 計算 / weapons sword otherworld star calculate
    ## Guide [ function weapons:type/sword/otherworld_star/effect_dmg ] >>> 劍 異界晨星 effect dmg / sword otherworld star effect dmg
    ## Guide [ function weapons:type/sword/otherworld_star/fallstar/main ] >>> 劍 異界晨星 fallstar 主迴圈 / sword otherworld star fallstar loop

# ===================================================

tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger

tag @p[tag=weapon.otherworld_star.effect.user] add atker

scoreboard players set @p[sort=arbitrary,tag=weapon.otherworld_star.effect.user,tag=atker] dmg_formula.atk_percentage 200
function dmg_formula:weapons/type/sword/otherworld_star/calculate

tag @p[sort=arbitrary,tag=weapon.otherworld_star.effect.user] remove weapon.otherworld_star.effect.user

schedule function weapons:type/sword/otherworld_star/effect_dmg 1t