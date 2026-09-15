# 執行者 : 連線模式中的玩家，剛左鍵了另一座塔

function sys:zipline_platform/link/pair

function sys:zipline_platform/link/erase/1 with storage sys:zipline_platform link
function sys:zipline_platform/link/swap
function sys:zipline_platform/link/erase/1 with storage sys:zipline_platform link

playsound minecraft:block.chain.break master @s ~ ~ ~ 1 0.8

tellraw @s [{"translate":"tips.zipline_platform.link.erased","color":"red","bold":true},{"text":" ","color":"red"},{"text":"#","color":"gray"},{score:{name:"@s",objective:"sys.zipline_platform.link"},"color":"yellow"},{"text":" ↮ #","color":"gray"},{score:{name:"#clicked",objective:"sys.zipline_platform.link"},"color":"yellow"}]

# 拆完之後自動退出編輯模式
function sys:zipline_platform/link/select/end
