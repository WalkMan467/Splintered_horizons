summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"air"},Radius:0,Duration:1,Tags:["weapon.ruins_of_the_finality.effect.chain.final.point"]}

function particle:space_crack/use

kill @e[tag=weapons.ruins_of_the_finality.adsorption.point]

scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 0