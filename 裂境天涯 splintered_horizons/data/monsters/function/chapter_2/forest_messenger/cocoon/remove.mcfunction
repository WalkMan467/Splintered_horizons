# ===================================================
# 繭 移除 入口 / cocoon remove entry

    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/remove ] >>> 繭 移除 入口 / cocoon remove entry
    ## Guide [ function bossfight:chapter_2/elekiel_phase_2/skills/kill ] >>> kill
    ## Guide [ function bossfight:chapter_2/elekiel_phase_2/skills/void ] >>> void
    ## Guide [ function main:duration/kill ] >>> kill
    ## Guide [ function monsters:chapter_2/forest_messenger/cast/end ] >>> 森林信使 施法 結束並重設冷卻 / forest messenger cast end
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/remove_guide ] >>> 繭 移除 遞迴清乘客 / cocoon remove passengers

# ===================================================

function monsters:chapter_2/forest_messenger/cast/end
effect clear @s glowing
item replace entity @s weapon.offhand with air

scoreboard players operation #detect monster.forest_messenger.cocoon.id = @s[tag=skeleton] monster.forest_messenger.cocoon.id


execute \
    as @e[tag=monster.forest_messenger.cocoon,distance=0..,type=block_display] \
    if score @s monster.forest_messenger.cocoon.id = #detect monster.forest_messenger.cocoon.id run \
tag @s add monster.forest_messenger.cocoon.remove


execute \
    as @e[tag=monster.forest_messenger.cocoon,tag=monster.forest_messenger.cocoon.remove,distance=0..,type=block_display] at @s run \
function monsters:chapter_2/forest_messenger/cocoon/remove_guide