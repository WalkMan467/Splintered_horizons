# ===================================================
# 箭矢落地偵測 執行 / arrow ground detect run

    ## Guide [ function weapons:type/arrows/ground_detect/run ] >>> 箭矢落地偵測 執行 / arrow ground detect run
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/ground_detect ] >>> 天導神弓箭矢 箭矢落地偵測 / heavenly guiding arrow ground detect
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide

# ===================================================

execute \
    if predicate {type:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{custom_data:{"id":"heavenly_guiding_arrow"}}}}}} \
    if entity @s[tag=weapon.heavenly_guiding_bow.arrow.holy_fire,tag=weapon.heavenly_guiding_bow.arrow.2] run \
function weapons:type/arrows/heavenly_guiding_arrow/ground_detect

$function weapons:type/arrows/$(id)/use

kill @s