# 一個 tick 只跑一次，不要再用 as @a at @s 包
# 那樣同一顆灰燼會被每個附近的玩家各推一次，人越多飛越快

execute \
    as @e[tag=particle.radial_exoansion,type=armor_stand] at @s run \
function particle:create/radial_exoansion/guide


# 灰燼全沒了就收尾（正常壽命到、被 kill、chunk 卸載都算）

execute \
    unless entity @e[sort=arbitrary,limit=1,tag=particle.radial_exoansion,type=armor_stand] run \
function particle:create/radial_exoansion/end


# 還有東西在跑才續 loop

execute \
    if score #particle.radial_exoansion.loop particle.global.main matches 1.. run \
schedule function particle:create/radial_exoansion/main 1t
