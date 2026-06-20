execute \
    as @e[distance=0..60,tag=monster.elekiel_phase_2.5.act,type=interaction] \
    on passengers \
    if entity @s[tag=aj.player_projection.root,type=item_display] run \
function aj:player_projection/remove/this

kill @e[distance=0..60,tag=monster.elekiel_phase_2.5.act,type=interaction]