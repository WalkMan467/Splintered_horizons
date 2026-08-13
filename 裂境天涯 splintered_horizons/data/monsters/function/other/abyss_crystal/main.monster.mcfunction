# Cast

execute \
    if score @s monster.skill.cast.at <= #now global.time run \
function monsters:other/abyss_crystal/cast/cast


execute \
    if data entity @s {HurtTime:10s} run \
function monsters:other/abyss_crystal/state/on_hurt