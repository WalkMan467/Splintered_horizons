# ===================================================
# Armors Main Function

    ## Guide [ function armors:loop ] >>> Armors Main Loop
    ## Guide [ function armors:reload_rpg_armor_effect ] >>> Reload Armor Effect And Detect
    ## Guide [ function armors:type/scoreboard ] >>> Armors Scoreboard
    ## Guide [ function armors:type/timer_s ] >>> Armors 1s Timer
    ## Guide [ function armors:type/timer_t ] >>> Armors 1t Timer

# ===================================================

scoreboard objectives add armor.tai_chis_shadow.effect dummy "調和之影 效果層數"
scoreboard objectives add armor.tai_chis_shadow.restore_mana dummy "調和之影 恢復魔力"
scoreboard objectives add armor.tai_chis_shadow.restore_mana_magnification dummy "調和之影 恢復魔力倍率"
scoreboard objectives add armor.black_hole.boots.sneak dummy "黑洞之靴 潛行偵測"
scoreboard objectives add armor.black_hole.boots.cd dummy "黑洞之靴 CD"
scoreboard objectives add armor.black_hole.boots.active dummy "黑洞之靴 啟動狀態"

scoreboard objectives add armor.black_hole.boots.effect dummy "黑洞之靴 技能觸發"
scoreboard objectives add armor.black_hole.boots.damage_delay dummy "黑洞之靴 傷害間隔"

scoreboard players add @a armor.tai_chis_shadow.restore_mana 0
scoreboard players add @a armor.tai_chis_shadow.restore_mana_magnification 0
scoreboard players add @a armor.tai_chis_shadow.effect 0
scoreboard players add @a armor.black_hole.boots.cd 0
scoreboard players add @a armor.black_hole.boots.active 0