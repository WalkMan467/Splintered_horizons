# ===================================================
# 黑洞苦力怕 主程式 / blackhole creeper main

    ## Guide [ function monsters:chapter_2/blackhole_creeper/main ] >>> 黑洞苦力怕 主程式 / blackhole creeper main
    ## Guide [ function monsters:generic/creeper_detect/guide ] >>> 苦力怕偵測 分派 / creeper detect dispatch
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_2/blackhole_creeper/blackhole/summon ] >>> 黑洞 生成 / blackhole summon
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

execute \
    unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{nbt:"{potion_contents:{custom_effects:[{id:\"minecraft:unluck\",amplifier:2b}]}}"}} run \
return 0

execute \
    if score @s sys.silence matches 1.. run \
return 0

execute \
    positioned ~ ~0.5 ~ run \
function monsters:chapter_2/blackhole_creeper/blackhole/summon

kill @s[type=area_effect_cloud]