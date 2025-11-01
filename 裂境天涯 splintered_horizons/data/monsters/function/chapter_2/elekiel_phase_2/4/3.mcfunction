playsound minecraft:entity.warden.sonic_charge voice @s ~ ~1 ~ 1 0.5

tag @s add temp
tag @s[tag=!animation,gamemode=spectator] remove temp

tag @s[tag=temp] add monster.elekiel_phase_2.4.death_timer

tag @s remove temp