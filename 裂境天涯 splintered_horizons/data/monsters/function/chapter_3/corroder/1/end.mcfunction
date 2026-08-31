# ===================================================
# 腐蝕者 技能1 收尾 / corroder skill 1 finish

    ## Guide [ function monsters:chapter_3/corroder/1/end ] >>> 腐蝕者 技能1 收尾 / corroder skill 1 finish
    ## Guide [ function monsters:chapter_3/corroder/1/main ] >>> 腐蝕者 技能1 分鏡 / corroder skill 1 timeline
    ## Guide [ function monsters:chapter_3/corroder/cast/end ] >>> 腐蝕者 施法 結束並重設冷卻 / corroder cast end

# ===================================================

# effect
tag @s remove monsters.corroder.1
data merge entity @s {NoAI:0b,Glowing:0b}
attribute @s minecraft:armor modifier remove corroder

function monsters:chapter_3/corroder/cast/end