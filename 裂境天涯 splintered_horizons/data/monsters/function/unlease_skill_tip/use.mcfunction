# 夢魘技能預告。monsters.unlease_skill_tip.hide 由沉默元件加上，語意是
# 「這隻怪正被沉默，不該顯示施法預告」，所以這裡要的是「沒有」它。
# 原本寫成 if（要求 hide 存在），等於只有被沉默時才顯示，但被沉默的怪
# 根本放不出技能，所以夢魘提示實際上永遠不會出現。

execute \
    if entity @s[tag=monsters.nightmare_skills,tag=!monsters.unlease_skill_tip.hide] run \
    return run \
function monsters:unlease_skill_tip/nightmare_difficulty


execute \
    unless entity @s[tag=monsters.nightmare_skills] run \
    return run \
function monsters:unlease_skill_tip/normal

tag @s remove monsters.nightmare_skills