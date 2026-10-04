# 執行者 : 接續失敗的玩家
#
# 跟 point/clear/use 裡的脫離收尾一樣，只是那邊是以載具為執行者用 @p，
# 這裡直接就是玩家慣性、落地免摔傷都保留，體感跟沒按 Ctrl 一致

tag @s add sys.fall_immunity
scoreboard players set @s player.actionbar.zipline_platform.useing 0

function sys:zipline_platform/motion/use

execute \
    if predicate players:detect/input/front run \
function sys:zipline_platform/motion/forward/use

scoreboard players set @s player.shift.skill.disable 16
scoreboard players set @s player.disable.elytra_switch 20
