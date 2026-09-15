# 執行位置 : 某個玩家身上
#
# 取代原本的 chain_raycast。
#
# chain_raycast 是從最近的一座塔往外射線，命中誰就再從誰身上繼續往外串
# （c:hit → c:chain），所以它本來就是「把找得到的全部接起來」，塔一多
# 就會變蜘蛛網，而且線是不可控的。
#
# 這裡改成只沿著鄰接表裡真的存在的邊畫，塔再多也只會有你自己綁的那些線。

execute \
    as @e[tag=sys.zipline_platform.as,tag=sys.zipline_platform.linked,tag=!sys.zipline_platform.drawn,distance=..60,type=armor_stand] at @s run \
function sys:zipline_platform/link/draw/from
