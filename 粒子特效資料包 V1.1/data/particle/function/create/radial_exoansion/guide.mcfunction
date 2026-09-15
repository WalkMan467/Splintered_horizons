# 環形展開特效 - 每 tick 對每一顆灰燼跑一次
# 由 particle:create/radial_exoansion/main 呼叫，執行者 @s = 灰燼本體（armor_stand）


# 剩餘壽命 = duration - gametime
# duration 在 setup 時被設成 gametime + 100 (5s)
# 所以「剩 80 以上」= 生成後的前 20 ticks，這段時間才往外推
# 想改展開時間就動這個 80（展開 ticks = 100 - 這個值）

scoreboard players operation #particle.radial_exoansion.timer particle.global.main = @s particle.radial_exoansion.duration
scoreboard players operation #particle.radial_exoansion.timer particle.global.main -= .gametime particle.global.main

execute \
    if score #particle.radial_exoansion.timer particle.global.main matches 80.. run \
function particle:create/radial_exoansion/guide/move


# 展開結束後就不再碰它，開物理的會自己掉、自己彈，直到壽命到

execute \
    unless score .gametime particle.global.main >= @s particle.radial_exoansion.duration run \
return 0


function particle:create/radial_exoansion/void

scoreboard players reset @s particle.radial_exoansion.duration
