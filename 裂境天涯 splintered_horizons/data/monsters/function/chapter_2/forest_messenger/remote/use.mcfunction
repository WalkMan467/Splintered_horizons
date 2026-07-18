
execute \
    if entity @s[tag=monster.forest_afterimage.remote] run \
return 0

tag @s remove monster.forest_afterimage.melee

item replace entity @s weapon.mainhand with bow[enchantments={power:2}]

tag @s add monster.forest_afterimage.remote