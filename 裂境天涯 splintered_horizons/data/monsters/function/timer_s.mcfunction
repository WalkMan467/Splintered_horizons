function monsters:chapter_2/broken_moon/timer_s

# 終焉轉化

scoreboard players remove @e[type=!player,type=!#minecraft:dummy_mob,scores={monster.effect.finality=0..}] monster.effect.finality 1
scoreboard players reset @e[type=!player,type=!#minecraft:dummy_mob,scores={monster.effect.finality=-1}] monster.effect.finality

schedule function monsters:timer_s 1s