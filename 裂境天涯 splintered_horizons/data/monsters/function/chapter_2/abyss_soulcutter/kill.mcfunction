execute as @a at @s run function monsters:bossfight/chapter_2/reset_player_die

summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["monster.death_particle.1","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0}

bossbar remove minecraft:monster.boss.abyss_soulcutter

function animated_java:boss_1/remove/all

function story:chapter_2/stop

scoreboard players set story.chapter_2.bossfight.ml story.chapter_2 1


schedule function monsters:summon/chapter_2/broken_moon 20t

fill 1717 101 878 1725 108 886 air
