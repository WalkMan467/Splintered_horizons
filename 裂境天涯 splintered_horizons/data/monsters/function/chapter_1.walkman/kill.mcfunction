kill @s
kill @e[tag=chapter_1.walkman.3.1.ring]
kill @e[tag=chapter_1.walkman.3.1.spawn]
kill @e[tag=chapter_1.walkman.3.skill]
kill @e[tag=chapter_1.walkman.4]
tag @a remove chapter_1.walkman.3.trigger

scoreboard players set #boss.chapter_1.walkman global.main 1

tag @a remove chapter_1.walkman.3.1.ring.in.first

bossbar remove minecraft:chapter_1.walkman

stopsound @a record minecraft:bgm.erdtree_knights

scoreboard players set #boss.chapter_1.walkman global.main 0