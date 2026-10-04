# ===================================================
# 碎岩大劍 右鍵 防禦 default fx / sword rock crushing greatsword right click defense default fx

    ## Guide [ function weapons:type/sword/rock_crushing_greatsword/rc/defense/default_fx ] >>> 碎岩大劍 右鍵 防禦 default fx / sword rock crushing greatsword right click defense default fx

# ===================================================

advancement revoke @s only weapons:type/sword/rock_crushing_greatsword/defense


execute \
    unless score @s weapon.rock_crushing_greatsword.hold_down matches 9..14 run \
return 0

playsound minecraft:entity.iron_golem.repair voice @a ~ ~1 ~ 1 0.875
particle minecraft:crit ~ ~1 ~ 0 0 0 1.5 100 normal @a

scoreboard players set @s weapon.effect.holy_fire 100