
execute \
    as @a at @s \
    if entity @s[tag=player.replace.food] \
    unless items entity @s weapon.mainhand * run \
function players:replace/food/guide

tag @a remove player.replace.food
schedule function players:replace/food/main 1t