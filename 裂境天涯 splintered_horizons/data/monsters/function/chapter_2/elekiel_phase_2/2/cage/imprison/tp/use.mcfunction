

execute \
    unless entity @s[tag=monster.elekiel_phase_2.2.cage.imprison] facing entity @e[distance=0..,tag=temp,limit=1,type=item_display] feet rotated ~ 0 run \
function monsters:chapter_2/elekiel_phase_2/2/cage/imprison/tp/loop
tag @s remove monster.elekiel_phase_2.2.cage.imprison.last_tick