
execute if entity @s[tag=aj.aaron.root,scores={duration=0}] run function animated_java:aaron/remove/this

kill @s[type=!player,scores={duration=0}]

scoreboard players remove @s[scores={duration=0..}] duration 1