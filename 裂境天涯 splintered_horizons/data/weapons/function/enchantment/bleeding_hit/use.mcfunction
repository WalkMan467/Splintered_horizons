execute \
    on attacker \
    if entity @s[type=player] run \
tag @s add user.player

execute \
    on attacker \
    if entity @s[type=player] run \
scoreboard players add @s weapon.enchantment.bleeding_hit.cd 0

execute \
    on attacker \
    unless entity @s[type=player] run \
tag @s add user.enemy

execute \
    if score @p[tag=user.player] weapon.enchantment.bleeding_hit.cd matches ..1 run \
function weapons:enchantment/bleeding_hit/run

execute \
    if entity @n[sort=arbitrary,tag=user.enemy,distance=0..,type=!player] run \
function weapons:enchantment/bleeding_hit/run

execute \
    on attacker \
    if entity @s[type=player] run \
tag @s remove user.player

execute \
    on attacker \
    unless entity @s[type=player] run \
tag @s remove user.enemy

advancement grant @s[type=player] only players:icon/status_effects/bleeding