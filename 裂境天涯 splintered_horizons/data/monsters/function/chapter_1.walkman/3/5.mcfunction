scoreboard players reset #boss.chapter_1.walkman.3 particle
function monsters:chapter_1.walkman/3/6

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 5 0.75

effect give @a[distance=..3] luck 60 1 true
execute as @a[distance=..3] run damage @s 5 weapons:bypasses_cooldown
tag @a remove chapter_1.walkman.3.trigger
kill @s