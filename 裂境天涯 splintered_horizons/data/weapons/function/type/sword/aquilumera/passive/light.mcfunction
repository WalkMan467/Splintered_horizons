# dmg
tag @e[type=!#dummy_mob,distance=..8,limit=1,sort=random,type=!player] add dmger
effect give @e[type=!#dummy_mob,distance=..8,type=!player] weakness 5 2 false
scoreboard players set @s atk 125
function dmg_formula:weapons/type/sword/aquilumera/calculate

# particle
particle minecraft:sweep_attack ~ ~1 ~ 5 5 5 0 5 force @a
playsound minecraft:item.shield.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.zombie_villager.converted voice @a[distance=..16] ~ ~1 ~ 0.3 2

# reset
scoreboard players remove @s weapon.aquilumera_passive 1
execute if score @s weapon.aquilumera_passive matches ..0 run tag @s remove water_sword.l_user

#區分這個是引爆的玩家傷害而不是一般玩家普攻命中的傷害
#判斷用計時器 0 = 不是 ; 1.. = 是 
scoreboard players set #is_water_sword_demon.passive? global.main 10