item replace entity @s weapon.offhand with arrow

data modify entity @s Glowing set value 0b
playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.75
particle dust{color:[1.000,0.922,0.988],scale:1.5} ~ ~1 ~ 0.5 0.75 0.5 1 40 normal

function monsters:chapter_1/explosion_arrow_skeleton/cast/end