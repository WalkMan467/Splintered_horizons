# ===================================================
# 練習木樁 還原武器耐久 / target dummy reset durability

    ## Guide [ function monsters:other/target_dummy/reset_damage ] >>> 練習木樁 還原武器耐久 / target dummy reset durability
    ## Guide [ function monsters:other/target_dummy/on_hurt ] >>> 練習木樁 受擊 判定武器 / target dummy on hurt

# ===================================================

item modify entity @s weapon.mainhand [{type:"minecraft:set_damage",damage:-0.02,add:1b}]
item modify entity @s weapon.mainhand [{type:"minecraft:set_damage",damage:0.01,add:1b}]