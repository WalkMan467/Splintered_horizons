playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.65

tag @s add temp

execute \
    as @e[sort=arbitrary,distance=..10,tag=aj.setup,tag=aj.stellar_animation.root,type=item_display] at @s \
    if score @s weapon.earthquake_axe.user.id = @a[limit=1,sort=arbitrary,distance=..10,tag=temp] weapon.earthquake_axe.user.id \
    if score @a[limit=1,sort=arbitrary,distance=..10,tag=temp] player.finality_tunder matches 1.. run \
function weapons:type/axe/earthquake_axe/animation/run_guide

execute \
    as @e[sort=arbitrary,distance=..10,tag=aj.setup,tag=aj.stellar_animation.root,type=item_display] at @s \
    if score @s weapon.earthquake_axe.user.id = @a[limit=1,sort=arbitrary,distance=..10,tag=temp] weapon.earthquake_axe.user.id \
    if score @a[limit=1,sort=arbitrary,distance=..10,tag=temp] player.finality_tunder matches 0 run \
function weapons:type/axe/earthquake_axe/animation/end

tag @s remove temp