tag @r[tag=!sys.environmental_mechanism.chapter_1.gravity.temp] add sys.environmental_mechanism.chapter_1.gravity.temp

execute \
    as @a[sort=arbitrary,tag=sys.environmental_mechanism.chapter_1.gravity.temp] at @s run \
function sys:environmental_mechanism/chapter_1/gravity_disturbance_area/point/check

execute \
    as @e[sort=arbitrary,limit=2,distance=0..,tag=sys.environmental_mechanism.chapter_1.gravity.point.actived,type=marker] at @s run \
function sys:environmental_mechanism/chapter_1/gravity_disturbance_area/use

tag @a remove sys.environmental_mechanism.chapter_1.gravity.temp

schedule function sys:environmental_mechanism/chapter_1/gravity_disturbance_area/point/schedule 30s