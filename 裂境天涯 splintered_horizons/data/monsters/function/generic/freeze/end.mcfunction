
execute \
    as @e[sort=arbitrary,tag=monster.freeze.display,type=block_display,distance=..5] at @s \
    if score @s monster.skill.freeze.id = @n[tag=freeze,distance=..5] monster.skill.freeze.id run \
kill @s

scoreboard players reset @s monster.skill.freeze

tag @s remove freeze

data modify entity @s NoAI set value 0b