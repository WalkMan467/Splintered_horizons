execute unless score @s weapon.morning_light.cd matches -1 run return fail
scoreboard players remove @s[scores={player.mana=10..}] player.mana 10
tag @s add weapon.morning_light.active

playsound minecraft:entity.enderman.teleport voice @a ~ ~ ~ 1 2

summon pig ~ ~ ~ {DeathLootTable:"",Tags:["weapon.morning_light.motion"],Silent:1b,PersistenceRequired:1b,Motion:[0.0,2.0,0.0],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:scale",base:0.1}]}
ride @p mount @n[tag=weapon.morning_light.motion]
scoreboard players set @n[tag=weapon.morning_light.motion] weapon.morning_light.motion 5