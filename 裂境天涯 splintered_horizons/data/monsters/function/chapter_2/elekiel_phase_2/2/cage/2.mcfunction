
# fx

execute \
    unless entity @s[type=item_display,tag=mob.elekiel.2.display] rotated ~ 90 run \
function monsters:chapter_2/elekiel_phase_2/2/cage/dot/use

execute \
    unless entity @s[type=item_display,tag=mob.elekiel.2.display] rotated ~ -90 run \
function monsters:chapter_2/elekiel_phase_2/2/cage/dot/use
data merge entity @s {transformation:{scale:[8.0f,8.0f,8.0f]},interpolation_duration:5}

playsound mob:cage_release master @a ~ ~ ~ 0.35 1.5
playsound minecraft:entity.dolphin.attack master @a ~ ~ ~ 0.5 1.5
playsound minecraft:block.chain.break master @a ~ ~ ~ 0.75 0