
# slime
summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,Glowing:1b,DeathLootTable:"",NoAI:1b,Health:70f,Size:8,Tags:["stormpm.3.4"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:regeneration",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:70},{id:"minecraft:generic.safe_fall_distance",base:1000}],Passengers:[{id:marker,Tags:["stormpm.3.5","Duration"]}]}

# particle
summon lightning_bolt ~ ~ ~
scoreboard players set #temp math 0
execute rotated ~ 0 run function monsters:stormpromax/3/2c

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 5 2