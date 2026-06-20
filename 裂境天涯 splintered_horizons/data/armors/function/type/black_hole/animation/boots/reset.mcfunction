# ===================================================

# reset



    ## Guide [ function armors:type/black_hole/animation/boots/reset ] >>> reset

    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> play

    ## Guide [ function armors:type/black_hole/animation/boots/main ] >>> boots main



# ===================================================



# Animation End



gamemode adventure @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=1}]

gamemode creative @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=2}]

gamemode spectator @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=3}]

gamemode survival @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=4}]

tag @s add temp

execute \
    as @e[distance=..10,sort=arbitrary,tag=aj.stellar.animation.boots_of_the_black_hole.playing,type=minecraft:item_display] at @s \
    if score @s armor.black_hole.boots.aj.id = @p[sort=arbitrary,distance=..10,tag=temp] player.id run \
tag @s add temp

execute \
    as @e[tag=!delete,tag=armor.black_hole.rotate.temp,distance=..10,type=area_effect_cloud] at @s \
    if score @s armor.black_hole.boots.aj.id = @p[sort=arbitrary,distance=..10,tag=temp] player.id run \
tag @s add temp

execute \
    at @n[distance=..10,sort=arbitrary,tag=temp,tag=aj.stellar.animation.boots_of_the_black_hole.playing,type=minecraft:item_display] run \
tp @s ~ ~ ~ facing entity @n[sort=arbitrary,distance=..10,tag=armor.black_hole.rotate.temp,type=area_effect_cloud] feet

rotate @s ~180 0


tag @s remove temp
tag @n[distance=..10,sort=arbitrary,tag=temp,tag=aj.stellar.animation.boots_of_the_black_hole.playing,type=minecraft:item_display] remove temp
kill @n[sort=arbitrary,tag=temp,tag=armor.black_hole.rotate.temp,distance=..10,type=area_effect_cloud]

scoreboard players reset @s player.gamemode



attribute @s movement_speed modifier remove armor.black_hole.animation.boots

attribute @s jump_strength modifier remove armor.black_hole.animation.boots



tag @s remove armor.black_hole.animation.boots.player



tag @s remove animation