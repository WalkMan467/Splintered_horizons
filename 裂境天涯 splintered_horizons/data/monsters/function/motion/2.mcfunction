# ===================================================
# 施加位移 階段 2 / motion step 2

    ## Guide [ function monsters:motion/2 ] >>> 施加位移 階段 2 / motion step 2
    ## Guide [ function monsters:motion/1 ] >>> 施加位移 階段 1 / motion step 1

# ===================================================

execute if entity @s[type=player] run \
return 0

summon marker ~ ~ ~ {UUID:[I;321321,-321312,312312,3213132]}

$execute as 0004e729-fffb-18e0-0004-c3f80031074c positioned 0.0 0.0 0.0 run tp @s ^ ^ ^$(speed)

data modify entity @s Motion set from entity 0004e729-fffb-18e0-0004-c3f80031074c Pos
tp 0004e729-fffb-18e0-0004-c3f80031074c @s