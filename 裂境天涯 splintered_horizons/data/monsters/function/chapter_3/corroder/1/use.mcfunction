# ===================================================
# 腐蝕者 技能1 起手 定身加甲 / corroder skill 1 start

    ## Guide [ function monsters:chapter_3/corroder/1/use ] >>> 腐蝕者 技能1 起手 定身加甲 / corroder skill 1 start
    ## Guide [ function monsters:chapter_3/corroder/cast/cast ] >>> 腐蝕者 施法 開始 / corroder cast begin

# ===================================================

# effect
tag @s add monsters.corroder.1
data merge entity @s {NoAI:1b,Glowing:1b}
attribute @s minecraft:armor modifier add corroder 30 add_value

# particle
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 2