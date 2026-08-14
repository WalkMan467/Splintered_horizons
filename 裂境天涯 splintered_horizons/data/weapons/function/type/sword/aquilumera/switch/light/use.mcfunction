# ===================================================
# 水之魔劍 水鏡之光 切換 light 觸發 / sword aquilumera switch light activate

    ## Guide [ function weapons:type/sword/aquilumera/switch/light/use ] >>> 水之魔劍 水鏡之光 切換 light 觸發 / sword aquilumera switch light activate
    ## Guide [ function weapons:type/sword/aquilumera/rc/use ] >>> 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate

# ===================================================

# aquilumera light switch
item modify entity @s weapon.mainhand weapons:type/sword/aquilumera/light

effect give @s speed 1 2 true

# particle
title @s times 10 5 10
title @s title {"text":"\uE007","font": "screen"}
title @s subtitle ""

particle glow_squid_ink ~ ~1 ~ 0 0 0 0.5 20 normal @a
particle flash{color:[1.000,0.835,0.000,1.00]} ~ ~ ~ 0 0 0 1 2 normal @a[scores={main.light_sensitivity=0}]
particle dust_color_transition{from_color: [1.0f, 1.0f, 0.0f], scale: 2f, to_color: [1.0f, 1.0f, 1.0f]} ~ ~5 ~ 5 5 5 0 200 normal @a

playsound voice.aquilumera_light voice @a ~ ~0.5 ~ 0.5 1
playsound entity.generic.explode voice @a ~ ~ ~ 1 0.5

# dmg
tag @s add water_sword.l_user