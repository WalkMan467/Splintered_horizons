
## ----- 施法開始 ----- ##
function monsters:-init/no_cast

# Skill

execute if entity @s[tag=chapter_2.broken_moon.1] run function monsters:chapter_2/broken_moon/cast/end
execute if entity @s[tag=chapter_2.broken_moon.1] run return 0
function monsters:chapter_2/broken_moon/2/use