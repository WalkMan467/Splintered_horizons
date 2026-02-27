execute \
    unless score $index weapon.aquilumera.count matches 2.. run \
return 0

tag @s add weapon.aquilumera.clear
tag @r[sort=arbitrary,tag=weapon.aquilumera.clear] add temp

clear @p[sort=arbitrary,tag=weapon.aquilumera.clear,tag=temp] *[minecraft:custom_data~{weapon:"aquilumera"}] 1
tellraw @p[sort=arbitrary,tag=weapon.aquilumera.clear,tag=temp] ""
tellraw @p[sort=arbitrary,tag=weapon.aquilumera.clear,tag=temp] [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate":"weapon.aquilumera.clear","color":"red","font":"default","bold":false,"fallback": "由於偵測到世界上存在多把相同的此武器，已隨機移除多餘的武器"}]

execute \
    as @p[sort=arbitrary,tag=weapon.aquilumera.clear,tag=temp] at @s run \
playsound minecraft:entity.cat.death voice @s ~ ~ ~ 1 1 1

execute \
    as @p[sort=arbitrary,tag=weapon.aquilumera.clear,tag=temp] at @s run \
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .5 1

execute \
    as @p[sort=arbitrary,tag=weapon.aquilumera.clear,tag=temp] at @s run \
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .61 1

tag @p[sort=arbitrary,tag=weapon.aquilumera.clear,tag=temp] remove temp
tag @s remove weapon.aquilumera.clear

scoreboard players reset @s weapon.aquilumera.count