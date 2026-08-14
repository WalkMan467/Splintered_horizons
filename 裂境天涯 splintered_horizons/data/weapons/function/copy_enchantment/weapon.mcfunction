# ===================================================
# 複製附魔 武器 / copy enchantment weapon

    ## Guide [ function weapons:copy_enchantment/weapon ] >>> 複製附魔 武器 / copy enchantment weapon
    ## Guide [ function weapons:copy_enchantment/use ] >>> 複製附魔 觸發 / copy enchantment activate
    ## Guide [ function weapons:copy_enchantment/t ] >>> 複製附魔 t / copy enchantment t

# ===================================================


execute \
    unless items entity @s weapon.offhand * run \
item replace entity @s weapon.offhand with stone_sword

item modify entity @s weapon.offhand weapons:rdm_enchantment
function weapons:copy_enchantment/use

item replace entity @s weapon.offhand with air