execute as @e[tag=chapter_1.walkman.4.clock.text] at @s run function monsters:chapter_1.walkman/4/clock/timer
execute as @a run function effects:timer

schedule function main:timer 1s