# @s = Injured player

execute \
    unless entity @s[tag=armor.paladins_helmet.use] run \
return 0

effect give @s resistance 2 1 true

scoreboard players set @s armor.helmet.effect.actived 2

tag @s remove armor.paladins_helmet.use