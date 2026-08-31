# ===================================================
# 深淵射手 技能1 換上爆裂箭 / explosion arrow skeleton skill 1 load arrow

    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/0 ] >>> 深淵射手 技能1 換上爆裂箭 / explosion arrow skeleton skill 1 load arrow
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/main ] >>> 深淵射手 技能1 分鏡 / explosion arrow skeleton skill 1 timeline

# ===================================================

item replace entity @s weapon.offhand with arrow[custom_data={id:"explosion_arrow",ground_detect:1b,rarity:"rare"},custom_model_data={strings:["explosion_arrow"]}]

data modify entity @s Glowing set value 1b
particle minecraft:flame ~ ~1 ~ 0 0 0 0.1 20 normal @a
particle minecraft:lava ~ ~1 ~ 0 0 0 0 10 normal @a
particle minecraft:dripping_lava ~ ~1 ~ 0.5 0.75 0.5 1 100 normal @a

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.fire.extinguish voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.75