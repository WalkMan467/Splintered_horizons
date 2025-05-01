advancement revoke @s only world_area:main/environment_particles/true

tellraw @s {"translate": "tips.environment_particles.close","color": "red"}
playsound minecraft:entity.experience_orb.pickup voice @s ~ ~1 ~ 1 0.5


tag @s remove environment_particles