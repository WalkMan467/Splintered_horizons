
summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["monster.death_particle.1","summon"],Particle:{type:"block",block_state:"air"},Radius:0}

scoreboard players set abyss_soulcutter monster.boss.spawn 0

bossbar remove minecraft:monster.boss.abyss_soulcutter

function animated_java:boss_1/remove/all

schedule function monsters:summon/chapter_2/broken_moon 10t