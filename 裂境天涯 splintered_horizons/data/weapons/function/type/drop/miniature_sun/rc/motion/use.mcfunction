# ===================================================
# 投擲 微型太陽 右鍵 位移 觸發 / thrown miniature sun right click motion activate

    ## Guide [ function weapons:type/drop/miniature_sun/rc/motion/use ] >>> 投擲 微型太陽 右鍵 位移 觸發 / thrown miniature sun right click motion activate
    ## Guide [ function weapons:type/drop/miniature_sun/rc/motion/data ] >>> 投擲 微型太陽 右鍵 位移 資料 / thrown miniature sun right click motion data
    ## Guide [ function weapons:type/drop/miniature_sun/rc/use ] >>> 投擲 微型太陽 右鍵 觸發 / thrown miniature sun right click activate

# ===================================================

function weapons:type/drop/miniature_sun/rc/motion/data

execute \
    if dimension minecraft:overworld run \
summon item ~ ~1.6 ~ {Age:5800,PickupDelay:32767,Tags:["weapon.miniature_sun.drop","summon"],Item:{id:"minecraft:magma_block",count:1}}

execute \
    unless dimension minecraft:overworld run \
summon item ~ ~1.6 ~ {Age:5800,PickupDelay:32767,Tags:["weapon.miniature_sun.drop","summon"],Item:{id:"minecraft:sculk",count:1}}

#將目標點從(0,0,0)往前移動一格：

execute rotated \
    as @s at @s \
    positioned 0.0 600.0 0.0 run \
tp 0000000a-0000-0000-0000-000100000002 ^ ^ ^1
#將目標點的座標，存入箭矢的Motion中：

execute \
    positioned ~ ~1.6 ~ run \
data modify entity @n[distance=0..,tag=weapon.miniature_sun.drop,tag=summon,type=item] Motion set from entity 0000000a-0000-0000-0000-000100000002 Pos

tag @e[tag=weapon.miniature_sun.drop,tag=summon,limit=10,distance=0..,type=item] remove summon