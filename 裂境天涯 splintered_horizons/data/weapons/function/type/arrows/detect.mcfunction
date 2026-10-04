# ===================================================
# 箭矢 偵測 / arrow detect

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
    if entity @s[advancements={weapons:arrows/damage_resonance_arrow=true}] run \
function weapons:type/arrows/damage_resonance_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/soul_restraint_arrow=true}] run \
function weapons:type/arrows/soul_restraint_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/bleeding_arrow=true}] run \
function weapons:type/arrows/bleeding_arrow/use

execute \
    on attacker \
    if entity @s[advancements={weapons:arrows/explosion_arrow=true}] run \
function weapons:type/arrows/explosion_arrow/use