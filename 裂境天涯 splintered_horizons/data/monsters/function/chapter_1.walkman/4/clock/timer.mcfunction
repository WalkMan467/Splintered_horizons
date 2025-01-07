scoreboard players remove @s[scores={chapter_1.walkman.4.clock=1..}] chapter_1.walkman.4.clock 1

execute if score @s chapter_1.walkman.4.clock matches 20 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"20"}'}
execute if score @s chapter_1.walkman.4.clock matches 19 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"19"}'}
execute if score @s chapter_1.walkman.4.clock matches 18 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"18"}'}
execute if score @s chapter_1.walkman.4.clock matches 17 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"17"}'}
execute if score @s chapter_1.walkman.4.clock matches 16 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"16"}'}
execute if score @s chapter_1.walkman.4.clock matches 15 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"15"}'}
execute if score @s chapter_1.walkman.4.clock matches 14 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"14"}'}
execute if score @s chapter_1.walkman.4.clock matches 13 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"13"}'}
execute if score @s chapter_1.walkman.4.clock matches 12 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"12"}'}
execute if score @s chapter_1.walkman.4.clock matches 11 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"11"}'}
execute if score @s chapter_1.walkman.4.clock matches 10 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"10"}'}
execute if score @s chapter_1.walkman.4.clock matches 9 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"9"}'}
execute if score @s chapter_1.walkman.4.clock matches 8 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"8"}'}
execute if score @s chapter_1.walkman.4.clock matches 7 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"7"}'}
execute if score @s chapter_1.walkman.4.clock matches 6 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"6"}'}
execute if score @s chapter_1.walkman.4.clock matches 5 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"5"}'}
execute if score @s chapter_1.walkman.4.clock matches 4 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"4"}'}
execute if score @s chapter_1.walkman.4.clock matches 3 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"3"}'}
execute if score @s chapter_1.walkman.4.clock matches 2 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"2"}'}
execute if score @s chapter_1.walkman.4.clock matches 1 run data merge entity @s {text:'{"bold":true,"color":"white","italic":false,"text":"1"}'}

playsound minecraft:block.note_block.hat voice @a ~ ~ ~ 3 0.5
execute if score @s chapter_1.walkman.4.clock matches ..5 run playsound minecraft:entity.sheep.shear voice @a ~ ~1 ~ 3 1

execute if score @s chapter_1.walkman.4.clock matches 0 run function monsters:chapter_1.walkman/4/clock/tp

execute as @s[scores={chapter_1.walkman.4.clock=0}] on vehicle run kill @s
kill @s[scores={chapter_1.walkman.4.clock=0}]
