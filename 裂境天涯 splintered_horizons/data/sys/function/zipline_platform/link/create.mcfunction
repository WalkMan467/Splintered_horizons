# 執行者 : 連線模式中的玩家，剛右鍵了另一座塔

execute \
    if score @s sys.zipline_platform.link = #clicked sys.zipline_platform.link run \
return 0

function sys:zipline_platform/link/pair

function sys:zipline_platform/link/create/1 with storage sys:zipline_platform link
function sys:zipline_platform/link/swap
function sys:zipline_platform/link/create/1 with storage sys:zipline_platform link

playsound minecraft:block.chain.place master @s ~ ~ ~ 1 1.2
playsound minecraft:block.copper_bulb.turn_on master @s ~ ~ ~ 1 2

tellraw @s [{"translate":"tips.zipline_platform.link.created","color":"green","bold":true},{"text":" ","color":"green"},{"text":"#","color":"gray"},{score:{name:"@s",objective:"sys.zipline_platform.link"},"color":"yellow"},{"text":" ↔ #","color":"gray"},{score:{name:"#clicked",objective:"sys.zipline_platform.link"},"color":"yellow"}]

# 連好之後自動退出編輯模式
function sys:zipline_platform/link/select/end
