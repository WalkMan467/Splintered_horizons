# ===================================================
# 追魂體 移除 遞迴清乘客 / ghost key remove passengers

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/remove/2 ] >>> 追魂體 移除 遞迴清乘客 / ghost key remove passengers
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/remove/1 ] >>> 追魂體 移除 特效 / ghost key remove fx

# ===================================================

# take all on passenger / vehicle to death
tag @s add sys.temp.void
execute \
    if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{passenger:{}}} \
    on passengers \
    unless entity @s[tag=sys.temp.void] run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/2

execute \
    if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} \
    on vehicle \
    unless entity @s[tag=sys.temp.void] run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/2

kill @s