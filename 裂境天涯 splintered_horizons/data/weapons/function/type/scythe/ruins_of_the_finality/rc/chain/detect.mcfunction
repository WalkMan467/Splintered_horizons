scoreboard players remove #temp weapon.ruins_of_the_finality.effect.range 1

function weapons:type/scythe/ruins_of_the_finality/rc/chain/summon_chain



execute \
    if score #temp weapon.ruins_of_the_finality.effect.range matches 1.. facing entity @n[tag=weapon.ruins_of_the_finality.effect.chain.final.point] feet \
    positioned ^ ^ ^0.5 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/scythe/ruins_of_the_finality/rc/chain/detect