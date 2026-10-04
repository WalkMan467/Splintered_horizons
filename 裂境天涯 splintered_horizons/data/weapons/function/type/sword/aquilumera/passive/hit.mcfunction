# ===================================================
# 水之魔劍 水鏡之光 被動 近戰命中 / sword aquilumera passive melee hit

    ## Guide [ function weapons:type/sword/aquilumera/passive/hit ] >>> 水之魔劍 水鏡之光 被動 近戰命中 / sword aquilumera passive melee hit
    ## Guide [ function weapons:type/sword/aquilumera/passive/is_my_hit ] >>> 水之魔劍 水鏡之光 被動 是否為自己打的 / sword aquilumera passive is my hit
    ## Guide [ function weapons:type/sword/aquilumera/passive/consume ] >>> 水之魔劍 水鏡之光 被動 消耗倒影 / sword aquilumera passive consume reflection

# ===================================================

# 水光裂隙
#
# 執行者 : 近戰命中「身上有倒影的怪物」的玩家（不限手上是哪把武器）
# 由進度 weapons:type/sword/aquilumera/hurt 呼叫，傷害類型只收各武器的 *_attack 與原版普攻，
# 技能、持續傷害、弓箭都不會進來
#
# 進度獎勵拿不到被打的是哪一隻，所以用 HurtTime 找 :
# 受傷當下 HurtTime 會被設成 10，下一次實體 tick 才開始往下扣，
# 再用 on attacker 確認打它的就是自己
# 橫掃一次打到好幾隻時，每一隻受傷都會各觸發一次進度，
# 所以用 reflection.hit 記「這一 tick 已經處理過」，不會重複扣

advancement revoke @s only weapons:type/sword/aquilumera/hurt

tag @s add weapon.aquilumera.hitter

execute \
    as @e[distance=..8,scores={weapon.aquilumera.reflection=1..},type=!player,nbt={HurtTime:10s}] \
    unless score @s weapon.aquilumera.reflection.hit = #gametime global.main \
    if function weapons:type/sword/aquilumera/passive/is_my_hit run \
function weapons:type/sword/aquilumera/passive/consume

tag @s remove weapon.aquilumera.hitter
