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