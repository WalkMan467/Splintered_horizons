
# success
tellraw @a[distance=..10] [{"text":"[WalkMan467] ","color":"white"},{"text":"遊戲結束！結算分數！","color":"green"}]
tellraw @a[distance=..10] ["",{"text":"恭喜獲得: "},{"score":{"name":"#sys.shooting_contest.score","objective":"global.main"}},{"text":"分！"}]
playsound minecraft:entity.player.levelup voice @a[distance=..10] 1042 152 -78 1 1

# over 30

execute \
    if score #sys.shooting_contest.sagittarius global.main matches 1.. \
    if score #sys.shooting_contest.score global.main matches 30.. run \
function sys:shooting_contest/game_over/reward/sagittarius

# over 20

execute \
    if score #sys.shooting_contest.score global.main matches 20.. run \
tellraw @a[tag=sys.shooting_contest] ["送你 ",{"text":"20個","color":"aqua"},{"translate":"weapon.coin_s","color":"dark_purple"},{"text":" ！","color":"white"}]

execute \
    if score #sys.shooting_contest.score global.main matches 20.. \
    as @a[tag=sys.shooting_contest] run \
loot give @s loot sys:shooting_contest/game_over/reward/coin

# player
tag @a[tag=sys.shooting_contest] remove sys.shooting_contest
title @a[distance=..10] times 10 20 10
title @a[distance=..10] title {"text":"遊戲結束！","color":"red"}
function sys:shooting_contest/bow/remove

execute \
    in minecraft:overworld \
    positioned 1046 152 -84 run \
kill @e[type=#arrows,dx=12,dy=4,dz=14]

# game
schedule clear sys:shooting_contest/loop
function sys:shooting_contest/sys/reset