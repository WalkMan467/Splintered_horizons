# ===================================================
# 熵蝕之火箭矢 分派 / bleeding arrow dispatch

    ## Guide [ function weapons:type/arrows/sunfire_of_entropy_erosion_arrow/guide ] >>> 熵蝕之火箭矢 分派 / bleeding arrow dispatch
    ## Guide [ function weapons:type/arrows/sunfire_of_entropy_erosion_arrow/use ] >>> 熵蝕之火箭矢 觸發 / bleeding arrow activate

# ===================================================

function cse:status_effects/apply/entropy_erosion/use {duration:305, tick_rate:60, damage: 5}

particle minecraft:raid_omen ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
particle dust_color_transition{from_color:[0.000,0.000,0.000],to_color:[0.980,0.000,0.000],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 30 normal @a
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.25 0.25 0.25 0 20 normal @a

playsound minecraft:entity.zombie.infect voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.trial_spawner.eject_item voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.5 1