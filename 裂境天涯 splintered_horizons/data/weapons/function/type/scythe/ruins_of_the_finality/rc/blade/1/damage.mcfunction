tag @e[type=!player,type=!#dummy_mob,distance=..4] add dmger
tag @p add temp
tag @p[tag=temp] add atker
scoreboard players set @p[tag=atker,tag=temp] atk 150
execute as @p[tag=temp] run function dmg_formula:weapons/type/sword/echo_rhythm/calculate