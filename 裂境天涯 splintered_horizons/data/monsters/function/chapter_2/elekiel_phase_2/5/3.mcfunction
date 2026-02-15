scoreboard players add @s monster.elekiel_phase_2.skill.5.act.click 1

execute \
    on attacker run \
playsound minecraft:block.anvil.land voice @s ~ ~1 ~ 1 2

data remove entity @s attack

execute \
    if score @s monster.elekiel_phase_2.skill.5.act.click matches ..4 run \
return 0

execute \
    on passengers \
    if entity @s[tag=aj.player_projection.root,type=item_display] at @s run \
function animated_java:player_projection/remove/this

kill @s[tag=monster.elekiel_phase_2.5.act,type=interaction]