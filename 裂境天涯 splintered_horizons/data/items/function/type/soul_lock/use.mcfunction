summon armor_stand ~ ~ ~ {Tags:["entity.soul_lock.spawnpoint","entity.soul_lock.spawnpoint.spawn"],Silent:1b,Invulnerable:1b,Motion:[0.0,-100.0,0.0],attributes:[{id:"minecraft:gravity",base:1024},{id:"minecraft:scale",base:0.00001}],DisabledSlots:4144959,active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}]}

scoreboard players operation @n[tag=entity.soul_lock.spawnpoint.spawn,limit=1] player.id = @s player.id

tag @e[tag=entity.soul_lock.spawnpoint.spawn] remove entity.soul_lock.spawnpoint.spawn

advancement revoke @s only items:type/soul_lock/use