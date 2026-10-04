# ===================================================
# 箭矢 偵測 / arrow detect

    ## Guide [ function weapons:type/arrows/detect ] >>> 箭矢 偵測 / arrow detect
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/use ] >>> 天導神弓箭矢 觸發 / heavenly guiding arrow activate
    ## Guide [ function weapons:type/arrows/sagittarius_arrow/use ] >>> 射手座箭矢 觸發 / sagittarius arrow activate
    ## Guide [ function weapons:type/arrows/bleeding_arrow/use ] >>> 赤血詛咒箭矢 觸發 / bleeding arrow activate
    ## Guide [ function weapons:type/arrows/explosion_arrow/use ] >>> 爆炸箭矢 觸發 / explosion arrow activate
    ## Guide [ function weapons:type/arrows/resplendence_arrow/use ] >>> 輝煌之光 符文箭矢 觸發 / resplendence arrow activate

# ===================================================

execute \
    on attacker \
    unless entity @s[type=player] run \
return 0

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/heavenly_guiding_arrow=true}] run \
function weapons:type/arrows/heavenly_guiding_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/sagittarius_arrow=true}] run \
function weapons:type/arrows/sagittarius_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/sunfire_of_entropy_erosion_arrow=true}] run \
function weapons:type/arrows/sunfire_of_entropy_erosion_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/bleeding_arrow=true}] run \
function weapons:type/arrows/bleeding_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/explosion_arrow=true}] run \
function weapons:type/arrows/explosion_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/resplendence_arrow=true}] run \
function weapons:type/arrows/resplendence_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/shadow_arrow=true}] run \
function weapons:type/arrows/shadow_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/chaotic_thunder_arrow=true}] run \
function weapons:type/arrows/chaotic_thunder_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/crimson_claw_arrow=true}] run \
function weapons:type/arrows/crimson_claw_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/holy_fire_arrow=true}] run \
function weapons:type/arrows/holy_fire_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/starry_sky_frost_arrow=true}] run \
function weapons:type/arrows/starry_sky_frost_arrow/use