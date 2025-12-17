scoreboard players operation @s sys.mini_game.hit_the_bullseye.bullseye.id = .index sys.mini_game.hit_the_bullseye.main.id

playsound minecraft:entity.ender_eye.death voice @p[sort=arbitrary,distance=..10,tag=sys.mini_game.hit_the_bullseye.bullseye.user] ~ ~ ~ 1 0.5

particle totem_of_undying ~ ~ ~ 0 0 0 0.5 20 normal @p[sort=arbitrary,distance=..10,tag=sys.mini_game.hit_the_bullseye.bullseye.user]
particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @p[sort=arbitrary,distance=..10,tag=sys.mini_game.hit_the_bullseye.bullseye.user]

tag @s remove summon