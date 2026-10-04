# ===================================================
# 腐化者 死亡 凋零雲 / corruptor on kill wither cloud

    ## Guide [ function monsters:chapter_1/corruptor/kill ] >>> 腐化者 死亡 凋零雲 / corruptor on kill wither cloud
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/cast/end ] >>> 深淵斷魂者 施法 結束並重設冷卻 / abyssal soulreaper cast end
    ## Guide [ function monsters:generic/nightmare_difficulty/abyss_explode/use ] >>> 夢魘 深淵爆炸 觸發 / nightmare abyss explode trigger

# ===================================================

execute \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_1/abyssal_soulreaper/cast/end

particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 40 normal @a
playsound minecraft:entity.glow_squid.squirt voice @a ~ ~1 ~ 0.5 1

summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[0.000,1.000,0.102],scale:1.5,to_color:[0.000,0.502,0.051]},Radius:1f,RadiusPerTick:0.025f,Duration:100,potion_contents:{custom_effects:[{id:"minecraft:wither",amplifier:2,duration:40,show_particles:1b,show_icon:1b,ambient:1b}]}}

execute \
    unless score #nightmare main.difficulty matches 1.. run \
return 0

function monsters:generic/nightmare_difficulty/abyss_explode/use