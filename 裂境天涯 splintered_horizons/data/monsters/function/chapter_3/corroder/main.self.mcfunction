# ===================================================
# 腐蝕者 本體 初始化與冷卻檢查 / corroder self init and cooldown

    ## Guide [ function monsters:chapter_3/corroder/main.self ] >>> 腐蝕者 本體 初始化與冷卻檢查 / corroder self init and cooldown
    ## Guide [ function monsters:chapter_3/corroder/main ] >>> 腐蝕者 主程式 / corroder main
    ## Guide [ function monsters:chapter_3/corroder/cast/cast ] >>> 腐蝕者 施法 開始 / corroder cast begin
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

# Initialization

execute \
    unless score @s monster.skill.cast.at matches -2147483648..2147483647 \
    store result score @s monster.skill.cast.at run \
random value 60..160
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_3/corroder/cast/cast