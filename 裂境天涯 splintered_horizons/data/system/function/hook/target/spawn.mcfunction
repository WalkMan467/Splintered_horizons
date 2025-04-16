summon interaction ~ ~-0.25 ~ {Tags:["weapon.hook.target","summon"],height:0.1,width:0.1}
scoreboard players add #index weapon.hook.target.id 1
scoreboard players operation @n[tag=weapon.hook.target,tag=summon] weapon.hook.target.id = #index weapon.hook.target.id
tag @n[tag=weapon.hook.target,tag=summon] remove summon