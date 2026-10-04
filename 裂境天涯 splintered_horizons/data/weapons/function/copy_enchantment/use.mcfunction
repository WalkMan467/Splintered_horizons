# ===================================================
# 複製附魔 觸發 / copy enchantment activate

    ## Guide [ function weapons:copy_enchantment/use ] >>> 複製附魔 觸發 / copy enchantment activate
    ## Guide [ function weapons:copy_enchantment/modify ] >>> 複製附魔 修改 / copy enchantment modify
    ## Guide [ function weapons:copy_enchantment/armor ] >>> 複製附魔 盔甲 / copy enchantment armor
    ## Guide [ function weapons:copy_enchantment/weapon ] >>> 複製附魔 武器 / copy enchantment weapon

# ===================================================


execute \
    if items entity @s weapon.offhand *[!enchantments] run \
return 0

data modify storage quick_enchantment:temp enchantments set from entity @s equipment."offhand".components."minecraft:enchantments"

function weapons:copy_enchantment/modify with storage quick_enchantment:temp

data remove storage quick_enchantment:temp enchantments