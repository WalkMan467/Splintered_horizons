execute \
    unless entity @p[sort=arbitrary,distance=..1] run \
return 0

execute \
    if score @p[distance=..1] monster.segrina.skill.1.ball matches 10.. run \
return 0

scoreboard players add @p[distance=..1] monster.segrina.skill.1.ball 1

playsound minecraft:entity.chicken.egg voice @a ~ ~1 ~ 1 0.75

execute \
    if entity @s[tag=monster.segrina.1.ball.light] run \
scoreboard players add @p[distance=..1] monster.segrina.skill.1.ball.light 1

execute \
    if entity @s[tag=monster.segrina.1.ball.light] run \
scoreboard players add @p[distance=..1] monster.segrina.skill.1.ball.atk 5


execute \
    if entity @s[tag=monster.segrina.1.ball.dark] run \
scoreboard players add @p[distance=..1] monster.segrina.skill.1.ball.dark 1

execute \
    if entity @s[tag=monster.segrina.1.ball.dark] run \
scoreboard players add @p[distance=..1] monster.segrina.skill.1.ball.dmg_taken 10

scoreboard players set @p[distance=..1] player.actionbar.segrina.1 20

effect give @p[distance=..1] speed 5 1 true

kill @s