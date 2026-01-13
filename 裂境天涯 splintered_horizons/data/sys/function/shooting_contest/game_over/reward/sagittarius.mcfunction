execute \
    unless score #sys.shooting_contest.sagittarius global.main matches 1.. run \
return 0

execute \
    unless entity @p[sort=arbitrary,tag=sys.shooting_contest] run \
return 0

tag @r[tag=sys.shooting_contest] add sys.shooting_contest.sagittarius_user

execute \
    as @p[tag=sys.shooting_contest.sagittarius_user] run \
function weapons:get/bow/sagittarius

tellraw @p[tag=sys.shooting_contest.sagittarius_user] ["送你 ",{"text":"1個","color":"light_purple"},{"translate":"weapon.sagittarius","color":"dark_aqua"},{"text":" ！","color":"white"}]

scoreboard players remove #sys.shooting_contest.sagittarius global.main 1

tag @a[sort=arbitrary,tag=sys.shooting_contest.sagittarius_user] add sys.shooting_contest.sagittarius_user