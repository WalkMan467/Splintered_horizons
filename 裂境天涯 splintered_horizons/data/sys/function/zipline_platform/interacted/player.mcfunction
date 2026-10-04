scoreboard players set #hit sys.zipline_platform.link 0

playsound minecraft:item.armor.equip_netherite voice @a ~ ~1 ~ 1 0.875
playsound minecraft:item.armor.equip_netherite voice @a ~ ~1 ~ 1 0.875
playsound minecraft:item.armor.equip_netherite voice @a ~ ~1 ~ 1 0.875

scoreboard players set @s player.disable.elytra_switch 60
scoreboard players set @s player.actionbar.zipline_platform 0
scoreboard players set @s player.actionbar.zipline_platform.useing 2

scoreboard players add #sys.zipline_platform.user.id sys.zipline_platform.id 1
scoreboard players operation @s sys.zipline_platform.id = #sys.zipline_platform.user.id sys.zipline_platform.id

# 795e2cb6-676d-4575-b1d1-6bd9f6cc8890
execute \
    anchored eyes \
    positioned ^ ^ ^100 run \
summon marker ~ ~ ~ {UUID:[I;2036214966,1735214453,-1311675431,-154367856]}

# 候選只取「跟出發塔有連線」的那幾座，並在各自 hitbox 中心放一個瞄準點，
# 順便發一組這次選擇專用的編號（見 interacted/aim）
scoreboard players set #pick sys.zipline_platform.pick 0

execute store result storage sys:zipline_platform link.from int 1 run scoreboard players get #from sys.zipline_platform.link
execute store result storage sys:zipline_platform link.prev int 1 run scoreboard players get #prev sys.zipline_platform.link

function sys:zipline_platform/interacted/candidates with storage sys:zipline_platform link

# 從眼睛看向每個瞄準點，投影到 100 格球面上
#
# anchored eyes 配 positioned ^ ^ ^0 是把眼睛位置固定進執行位置，
# 必須在 as 之前做——as 之後 @s 就不是玩家了
# 舊寫法漏了這一步，視線點從眼睛算、投影點從腳底算，
# 兩個球心差 1.62 格，判定天生偏向上方的目標

execute \
    anchored eyes \
    positioned ^ ^ ^0 \
    as @e[tag=sys.zipline_platform.aim,distance=..70,type=marker] \
    facing entity @s feet \
    positioned ^ ^ ^100 run \
function sys:zipline_platform/interacted/2

# 角度上限
#
# 投影點都在以眼睛為心、半徑 100 格的球面上，所以兩點之間的直線距離
# 就是 2*100*sin(角度/2) —— 100 格剛好等於偏離準心 60 度
#
# 原本這裡是 distance=0..，等於沒有上限：只要有連線，正後方的塔也會
# 被選中按住 Ctrl 接續時，最後一座塔唯一的連線就是你剛來的那座，
# 於是就在兩座之間無限來回下不來
execute \
    at 795e2cb6-676d-4575-b1d1-6bd9f6cc8890 \
    as @n[distance=..100,tag=sys.zipline_platform.pos,type=marker] run \
function sys:zipline_platform/interacted/3

# 給 chain/use 看的：這次到底有沒有選到目標
execute \
    if entity @e[tag=sys.zipline_platform.target,distance=..70,type=interaction] run \
scoreboard players set #hit sys.zipline_platform.link 1

execute \
    unless entity @e[tag=sys.zipline_platform.target,distance=..70,type=interaction] run \
tellraw @s [{"translate":"tips.zipline_platform.link.failure.1.1","color":"red"}," ",{"translate":"tips.zipline_platform.link.failure.1.2","color":"gray",with:[{"keybind":"key.attack","underlined": true, "color": "dark_green"}]}]

execute \
    at @n[tag=sys.zipline_platform.using,sort=arbitrary,distance=..8,type=interaction] \
    facing entity @n[tag=sys.zipline_platform.target,distance=..70,sort=arbitrary,type=interaction] feet run \
tp @s ~ ~3.5 ~ ~ ~

execute \
    positioned ~ ~3.5 ~ \
    as @e[tag=sys.zipline_platform.target,distance=..70,limit=1,type=interaction] at @s run \
function sys:zipline_platform/point/use

# reset
tag @e[distance=0..,tag=sys.zipline_platform.target,limit=1,type=interaction] remove sys.zipline_platform.target
tag @e[tag=sys.zipline_platform.candidate,type=interaction] remove sys.zipline_platform.candidate
kill @e[distance=0..,tag=sys.zipline_platform.pos,type=marker]
kill @e[distance=0..,tag=sys.zipline_platform.aim,type=marker]
kill 795e2cb6-676d-4575-b1d1-6bd9f6cc8890