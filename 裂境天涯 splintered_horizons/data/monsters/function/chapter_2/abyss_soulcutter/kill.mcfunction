summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["monster.death_particle.1","summon"],Particle:{type:"block",block_state:"air"},Radius:0}

bossbar remove minecraft:monster.boss.abyss_soulcutter

execute as @n[tag=aj.boss_1.root,type=item_display,distance=..10] run function animated_java:boss_1/remove/this