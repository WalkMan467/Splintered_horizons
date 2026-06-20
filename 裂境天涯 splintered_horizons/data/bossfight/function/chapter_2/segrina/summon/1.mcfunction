# 偵測是否為和平模式執行 return / Detect if the difficulty is peaceful, if so, return
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

# 偵測是否開始 BOSS 戰 / Detect if the boss fight has started, if not, return
execute \
    if score #bossfight global.main matches 1.. run \
    return run \
function bossfight:chapter_2/act/failure

# 偵測是否已經生成 BOSS 實體 / Detect if the boss entity has already been spawned
execute \
    if entity @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] run \
    return run \
function bossfight:chapter_2/act/failure

tag @a remove chapter_2.segrina.lose
gamemode adventure @s[gamemode=spectator]

execute \
    positioned 725 107 605 run \
tag @a[dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] add monster.segrina.bossfight.player

# Bossfight start
scoreboard players set #bossfight global.main 1

setblock -916 60 2750 air
setblock -916 61 2750 air

scoreboard players set #monster.bossfight.chapter_2.segrina.act.enable global.main 0

# 移除 BOSS 戰互動實體 / Remove bossfight interaction
function bossfight:chapter_2/act/segrina/1/false

execute \
    positioned -916 61 2750 \
    as @n[type=item_display,distance=..1,tag=aj.segrina.root] run \
function aj:segrina/remove/this

schedule function bossfight:chapter_2/segrina/summon/2 1t