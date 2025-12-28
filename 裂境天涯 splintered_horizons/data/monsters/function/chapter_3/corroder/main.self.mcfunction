
# Initialization

execute \
    unless score @s monster.skill.cast.cd matches -2147483648..2147483647 store result score @s monster.skill.cast.cd run \
random value 60..160

# Cast

execute \
    if score @s monster.skill.cast.cd matches ..0 run \
function monsters:chapter_3/corroder/cast/cast