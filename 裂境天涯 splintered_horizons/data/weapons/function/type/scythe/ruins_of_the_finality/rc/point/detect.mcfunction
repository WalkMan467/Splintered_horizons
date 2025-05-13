scoreboard players remove #temp weapon.ruins_of_the_finality.effect.range 1

# 擊中敵人
execute if score #temp weapon.ruins_of_the_finality.effect.range matches 2.. positioned ^ ^ ^0.5 if entity @n[distance=..2,type=!player,type=!#dummy_mob] run function weapons:type/scythe/ruins_of_the_finality/rc/point/final

# 擊中方塊
execute if score #temp weapon.ruins_of_the_finality.effect.range matches 2.. positioned ^ ^ ^0.5 if block ~ ~ ~ #penetrate run function weapons:type/scythe/ruins_of_the_finality/rc/point/detect
execute if score #temp weapon.ruins_of_the_finality.effect.range matches 2.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #penetrate run summon area_effect_cloud ^ ^ ^ {Particle:{type:"block",block_state:"air"},Radius:0,Duration:1,Tags:["weapon.ruins_of_the_finality.effect.chain.final.point"]}
execute if score #temp weapon.ruins_of_the_finality.effect.range matches 2.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #penetrate run function particle:space_crack/use

# 到達最大距離
execute if score #temp weapon.ruins_of_the_finality.effect.range matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #penetrate run function weapons:type/scythe/ruins_of_the_finality/rc/point/final