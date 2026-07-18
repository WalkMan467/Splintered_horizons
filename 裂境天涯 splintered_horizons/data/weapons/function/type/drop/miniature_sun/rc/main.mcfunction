
execute \
    as @e[tag=weapon.miniature_sun.drop,distance=0..,type=item] at @s \
    unless block ~ ~-0.1 ~ #penetrate run \
function weapons:type/drop/miniature_sun/rc/effect/run


execute \
    as @e[tag=weapon.miniature_sun.main,distance=0..,type=area_effect_cloud] at @s run \
function weapons:type/drop/miniature_sun/rc/effect/fx/entity