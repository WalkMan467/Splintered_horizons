advancement revoke @s only world_area:main/environment_particles/false

tellraw @s {"translate": "tips.environment_particles.open","color": "green"}
playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 1.5

tag @s add environment_particles