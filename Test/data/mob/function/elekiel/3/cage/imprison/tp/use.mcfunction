
execute unless entity @s[tag=mob.elekiel.3.cage.imprison] facing entity @e[tag=temp,type=item_display,limit=1] feet rotated ~ 0 run function mob:elekiel/3/cage/imprison/tp/loop
tag @s remove mob.elekiel.3.cage.imprison.last_tick