scoreboard players remove #temp weapon.ruins_of_the_end.effect.range 1

function weapons:type/sickle/ruins_of_the_end/rc/chain/summon_chain


execute if score #temp weapon.ruins_of_the_end.effect.range matches 1.. facing entity @n[tag=weapon.ruins_of_the_end.effect.chain.final.point] feet positioned ^ ^ ^0.5 if block ~ ~ ~ #penetrate run function weapons:type/sickle/ruins_of_the_end/rc/chain/detect