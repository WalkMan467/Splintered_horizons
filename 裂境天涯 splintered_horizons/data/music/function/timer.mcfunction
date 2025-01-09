#音樂計時器
scoreboard players remove @a[scores={music.chapter1.broken_city=1..}] music.chapter1.broken_city 1
scoreboard players remove @a[scores={music.chapter1.abyssal_ruins=1..}] music.chapter1.abyssal_ruins 1
scoreboard players remove @a[scores={music.main.campfire=1..}] music.main.campfire 1

schedule function music:timer 1s