
execute \
    if entity @s[tag=monster.forest_afterimage.melee] run \
return 0

tag @s remove monster.forest_afterimage.remote

item replace entity @s weapon.mainhand with stone_sword

tag @s add monster.forest_afterimage.melee