execute \
    if score @s armor.enchantment.shockwave.timer matches 1.. run \
tag @s add armor.shockwave.temp

execute \
    as @e[sort=arbitrary,distance=..20,tag=armor.shockwave.display,tag=!armor.shockwave.display.tp,type=item_display] at @s \
    if score @s armor.enchantment.shockwave.id = @p[sort=arbitrary,tag=armor.shockwave.temp] player.id run \
tag @s add armor.shockwave.display.tp

execute \
    as @s[tag=armor.shockwave.temp] at @s \
    if score @s player.id = @n[sort=arbitrary,tag=armor.shockwave.display,tag=armor.shockwave.display.tp,type=item_display] armor.enchantment.shockwave.id run \
tag @s add armor.shockwave.display.tp

execute \
    at @p[sort=arbitrary,tag=armor.shockwave.display.tp] run \
tp @n[sort=arbitrary,distance=..60,tag=armor.shockwave.display.tp,tag=armor.shockwave.display,type=item_display] ~ ~1 ~ 0 0

tag @a[sort=arbitrary,tag=armor.shockwave.temp] remove armor.shockwave.temp
tag @a[sort=arbitrary,tag=armor.shockwave.display.tp] remove armor.shockwave.display.tp

execute as @a[sort=arbitrary] \
if score @s armor.enchantment.shockwave.timer matches 0 run \
scoreboard players reset @s armor.enchantment.shockwave.timer