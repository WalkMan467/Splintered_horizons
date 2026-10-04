# ===================================================
# 天導神弓箭矢 magic circle transform / heavenly guiding arrow magic circle transform

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/transform ] >>> 天導神弓箭矢 magic circle transform / heavenly guiding arrow magic circle transform
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/data ] >>> 天導神弓箭矢 arrow motion 資料 / heavenly guiding arrow arrow motion data
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/main ] >>> 天導神弓箭矢 magic circle 主迴圈 / heavenly guiding arrow magic circle loop

# ===================================================


data merge entity @s {start_interpolation: 1,interpolation_duration:1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
particle end_rod ~ ~ ~ 0 0 0 0.1 5 force @a

tag @s add temp

function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/data with storage temp arrow

tag @s remove temp