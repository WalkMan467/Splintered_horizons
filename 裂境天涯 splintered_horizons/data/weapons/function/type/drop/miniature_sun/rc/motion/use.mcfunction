function weapons:type/drop/miniature_sun/rc/motion/data

#生成箭矢：
summon item ~ ~1.6 ~ {Age:5800,PickupDelay:32767,Tags:["weapon.miniature_sun.drop","summon"],Item:{id:"minecraft:magma_block",count:1}}

#將目標點從(0,0,0)往前移動一格：

execute rotated \
    as @s \
    positioned 0.0 600.0 0.0 run \
tp 0000000a-0000-0000-0000-000100000002 ^ ^ ^1
#將目標點的座標，存入箭矢的Motion中：

execute \
    positioned ~ ~1.6 ~ run \
data modify entity @n[type=item,tag=weapon.miniature_sun.drop,tag=summon] Motion set from entity 0000000a-0000-0000-0000-000100000002 Pos

tag @e[type=item,tag=weapon.miniature_sun.drop,tag=summon,limit=10] remove summon