advancement revoke @s only system:shooting_contest/add_score
scoreboard players add #system.shooting_contest.score global.main 1

playsound minecraft:entity.experience_orb.pickup voice @s ~ ~1 ~ 1 1

execute in minecraft:overworld positioned 1046 152 -84 run kill @e[type=#arrows,dx=12,dy=4,dz=14]