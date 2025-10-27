
# dmg
tag @e[type=!#dummy_mob,distance=..8,limit=1,sort=random,type=!player] add dmger
scoreboard players set @s atk 125
function dmg_formula:weapons/type/sword/aquilumera/calculate

# particle
particle sonic_boom ~ ~1 ~ 5 5 5 0 5 force @a
playsound entity.generic.explode voice @a ~ ~1 ~ 0.7 0.5
playsound block.beacon.activate voice @a[distance=..16] ~ ~1 ~ 9999 1 1

# reset
scoreboard players remove @s weapon.aquilumera_passive 1

#區分這個是引爆的玩家傷害而不是一般玩家普攻命中的傷害
#判斷用計時器 0 = 不是 ; 1.. = 是 
scoreboard players set #is_water_sword_demon.passive? global.main 10