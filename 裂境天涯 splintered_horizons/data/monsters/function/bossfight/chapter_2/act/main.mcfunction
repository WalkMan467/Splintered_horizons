execute as @a at @s if entity @n[tag=bossfight.act,distance=..60,type=interaction] run scoreboard players set @s player.disable.tp_book 10

schedule function monsters:bossfight/chapter_2/act/main 1t