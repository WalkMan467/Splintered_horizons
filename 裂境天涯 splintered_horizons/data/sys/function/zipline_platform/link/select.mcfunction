# 執行者 : 左鍵滑索台的玩家
# #clicked = 被點到那座塔的 id
#
# 玩家的 sys.zipline_platform.link 分數 = 連線模式的起點塔 id

execute \
    unless entity @s[tag=sys.zipline_platform.editing] run \
    return run \
function sys:zipline_platform/link/select/begin

execute \
    if score @s sys.zipline_platform.link = #clicked sys.zipline_platform.link run \
    return run \
function sys:zipline_platform/link/select/end

function sys:zipline_platform/link/erase
