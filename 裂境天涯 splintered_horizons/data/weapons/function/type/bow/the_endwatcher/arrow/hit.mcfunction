# ===================================================
# 弓 終焉凝視者 箭矢 命中 / bow the endwatcher arrow hit

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/hit ] >>> 弓 終焉凝視者 箭矢 命中 / bow the endwatcher arrow hit
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/is_my_hit ] >>> 弓 終焉凝視者 箭矢 是否為自己射的 / bow the endwatcher arrow is my hit
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/victim ] >>> 弓 終焉凝視者 箭矢 命中處理 / bow the endwatcher arrow victim
    ## Guide [ function weapons:type/bow/the_endwatcher/ultimate/end ] >>> 弓 終焉凝視者 終焉技 開眼結束 / bow the endwatcher ultimate awaken end

# ===================================================

# 執行者 : 射出第二段蓄力箭並命中敵人的玩家
#
# 由進度 weapons:type/bow/the_endwatcher/hit 呼叫，
# 進度只收「direct_entity 是帶 weapon.the_endwatcher.arrow 實體 tag 的箭」的傷害。
#
# 進度拿不到被射中的是誰，所以跟水鏡之光同一套 : 找 HurtTime 剛好 10、
# 而且 on attacker 是自己的實體。

advancement revoke @s only weapons:type/bow/the_endwatcher/hit

# 開眼中 = 釋放模式，否則 = 充能模式

scoreboard players set #mode weapon.the_endwatcher.stage 0

execute \
    if score @s weapon.the_endwatcher.awaken matches 1.. run \
scoreboard players set #mode weapon.the_endwatcher.stage 1

# 充能模式 : 命中就加共鳴值。這段不依賴下面的目標搜尋，
# 只要進度有觸發（= 這支箭真的打到怪）就一定會加。

execute \
    unless score @s weapon.the_endwatcher.awaken matches 1.. run \
function weapons:type/bow/the_endwatcher/arrow/resonance

# 釋放模式 : 先算好這一次要放多少，並從累積值扣掉

execute \
    if score #mode weapon.the_endwatcher.stage matches 1 run \
function weapons:type/bow/the_endwatcher/arrow/release_calc

tag @s add weapon.the_endwatcher.hitter

execute \
    as @e[distance=..64,type=!player,type=!#minecraft:dummy_mob,nbt={HurtTime:10s}] \
    if function weapons:type/bow/the_endwatcher/arrow/is_my_hit run \
function weapons:type/bow/the_endwatcher/arrow/victim

tag @s remove weapon.the_endwatcher.hitter
