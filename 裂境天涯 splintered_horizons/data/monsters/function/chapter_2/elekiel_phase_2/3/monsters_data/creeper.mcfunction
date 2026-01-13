data merge entity @s {DeathLootTable:"",PersistenceRequired:1b,Tags:["monster.elekiel_phase_2.3"]}

summon marker ~ ~ ~ {Tags:["monster.marker","main.duration.timer","summon"],data:{Death:"chapter_2/elekiel_phase_2/3/monsters_data",aj_kill:{name:""}}}

ride @n[tag=main.duration.timer,distance=..5,tag=summon,type=marker] mount @s

scoreboard players set @n[distance=0..,tag=main.duration.timer,tag=summon,type=marker] duration 200
tag @n[tag=main.duration.timer,distance=..5,tag=summon,type=marker] remove summon