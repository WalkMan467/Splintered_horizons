# ===================================================
# 附魔 禁止爆擊 觸發 / enchantment unable crit activate

    ## Guide [ function weapons:enchantment/unable_crit/use ] >>> 附魔 禁止爆擊 觸發 / enchantment unable crit activate

# ===================================================

execute \
    if items entity @s weapon.mainhand *[minecraft:custom_data~{unable_crit:1b}] run \
return 0

item modify entity @s weapon.mainhand [{type:"minecraft:set_components",components:{"minecraft:piercing_weapon":{deals_knockback:0b,dismounts:0b,hit_sound:"entity.player.attack.sweep"}}},{type:"minecraft:set_custom_data",tag:{unable_crit:1}}]