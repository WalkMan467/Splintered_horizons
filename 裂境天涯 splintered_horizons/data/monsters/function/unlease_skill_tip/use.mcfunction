execute \
    if entity @s[tag=monsters.nightmare_skills,tag=monsters.unlease_skill_tip.hide] run \
    return run \
function monsters:unlease_skill_tip/nightmare_difficulty


execute \
    unless entity @s[tag=monsters.nightmare_skills] run \
    return run \
function monsters:unlease_skill_tip/normal

tag @s remove monsters.nightmare_skills