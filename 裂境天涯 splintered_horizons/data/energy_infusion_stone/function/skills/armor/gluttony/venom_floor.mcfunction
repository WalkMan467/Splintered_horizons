# ===================================================
# 暴食者 緋紅劇毒地板 / gluttony crimson venom floor

    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/venom_floor ] >>> 暴食者 緋紅劇毒地板 / gluttony crimson venom floor
    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/main ] >>> 暴食者 主迴圈 / gluttony loop
    ## Guide [ function cse:status_effects/apply/crimson_venom/eat ] >>> 緋紅劇毒 啃一口 / crimson venom eat

# ===================================================

# 執行者 : 中毒的實體（掛在 #cse:status_effects/crimson_venom/floor，由緋紅劇毒算這一口時呼叫）
#
# 暴食者保證的是「被打到就把血鎖在上限的一半」。緋紅劇毒啃的是上限，
# 啃過頭的話那個一半會越鎖越低，人不會死但會變成大殘，保證等於沒有。
# 所以身上有暴食者的時候，劇毒的地板從固定 5 點改成「未中毒上限的一半」——
# 暴食者的保證大於劇毒。
#
# 直接檢查身上有沒有穿到這個附魔，不另外上 tag —— 脫下來當下就失效

execute \
    unless items entity @s armor.* *[minecraft:enchantments~[{enchantments:"energy_infusion_stone:skills/armor/gluttony"}]] run \
    return run \
return 0

# #base 是 CSE 算好的「未中毒上限」，百倍整數 ; 對半就是地板
# 暫存借 global.main，不去碰 CSE 自己的記分板

scoreboard players set #eis.gluttony.two global.main 2

scoreboard players operation #eis.gluttony.venom_floor global.main = #base cse.status_effects.crimson_venom.cut
scoreboard players operation #eis.gluttony.venom_floor global.main /= #eis.gluttony.two global.main

# 取大的那個 ; 原本的 5 點地板比較高的話就不動它

scoreboard players operation #floor cse.status_effects.crimson_venom.cut > #eis.gluttony.venom_floor global.main
