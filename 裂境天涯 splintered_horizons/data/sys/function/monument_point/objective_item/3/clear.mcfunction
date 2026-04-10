execute \
    store result score #weapon.pyrosolis.count global.main run \
clear @a *[minecraft:custom_data~{weapon:"pyrosolis"}] 0

execute \
    unless score #weapon.pyrosolis.count global.main matches 2.. run \
return 0

tag @s add weapon.pyrosolis.clear
tag @r[sort=arbitrary,tag=weapon.pyrosolis.clear] add temp

clear @p[sort=arbitrary,tag=weapon.pyrosolis.clear,tag=temp] *[minecraft:custom_data~{weapon:"pyrosolis"}] 1
tellraw @p[sort=arbitrary,tag=weapon.pyrosolis.clear,tag=temp] [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate":"tips.sys.monument.sowrd.remove.1","color":"red","font":"default","bold":false,"fallback": "由於偵測到世界上存在多把相同的此武器"}]
tellraw @p[sort=arbitrary,tag=weapon.pyrosolis.clear,tag=temp] [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"tips.sys.monument.sowrd.remove.2","color":"red","font":"default","bold":false,"fallback": "已隨機移除多餘的武器"}]

execute \
    as @p[sort=arbitrary,tag=weapon.pyrosolis.clear,tag=temp] at @s run \
playsound minecraft:entity.cat.death voice @s ~ ~ ~ 1 1 1

execute \
    as @p[sort=arbitrary,tag=weapon.pyrosolis.clear,tag=temp] at @s run \
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .5 1

execute \
    as @p[sort=arbitrary,tag=weapon.pyrosolis.clear,tag=temp] at @s run \
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .61 1

tag @p[sort=arbitrary,tag=weapon.pyrosolis.clear,tag=temp] remove temp
tag @s remove weapon.pyrosolis.clear