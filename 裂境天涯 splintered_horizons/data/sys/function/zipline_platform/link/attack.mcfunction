# 執行者 : 被左鍵的滑索台 interaction
#
# 左鍵本來沒有用途，拿來當連線編輯的入口
# 不用 Shift 是因為創造模式飛行時按 Shift 是下降，原版的潛行判定不成立
#
# data remove entity @s attack 一定要放在 on attacker 之後 ——
# on attacker 就是靠 attack 這個 NBT 欄位反查出玩家的

scoreboard players operation #clicked sys.zipline_platform.link = @s sys.zipline_platform.id

execute \
    on attacker \
    at @s run \
function sys:zipline_platform/link/select

data remove entity @s attack
