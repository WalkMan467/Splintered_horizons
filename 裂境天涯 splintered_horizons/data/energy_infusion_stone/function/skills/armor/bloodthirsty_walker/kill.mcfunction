# ===================================================
# 嗜血行者 擊殺觸發 / bloodthirsty walker on kill

    ## Guide [ function energy_infusion_stone:skills/armor/bloodthirsty_walker/kill ] >>> 嗜血行者 擊殺觸發 / bloodthirsty walker on kill
    ## Guide [ function weapons:rc/cd ] >>> 通用 CD / generic cooldown

# ===================================================

# 執行者 : 擊殺的玩家（掛在 #players:detect/kill_monsters）
#
# 直接檢查身上有沒有穿到這個附魔，不另外上 tag ——
# tag 要處理脫裝備的時機，items entity 一行就夠了

execute \
    unless items entity @s armor.* *[minecraft:enchantments~[{enchantments:"energy_infusion_stone:skills/armor/bloodthirsty_walker"}]] run \
return 0

# CD 用絕對時間制：分數存的是「甚麼時候轉好」，還沒到就直接收手

execute \
    if score @s player.eis.bloodthirsty_walker.cd > #gametime global.main run \
return 0

function weapons:rc/cd {id:"player.eis.bloodthirsty_walker.cd", cd:100}

effect give @s absorption 10 0 true

playsound minecraft:entity.generic.drink voice @s ~ ~ ~ 0.6 0.6
particle minecraft:damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0 6 normal @a
