
execute on attacker \
    unless entity @s[type=player] run \
return 0


execute on attacker \
    if entity @s[advancements={weapons:arrows/bleeding_arrow=true}] run \
function weapons:type/arrows/bleeding_arrow/use

execute on attacker \
    if entity @s[advancements={weapons:arrows/explosion_arrow=true}] run \
function weapons:type/arrows/explosion_arrow/use

execute on attacker \
    if entity @s[advancements={weapons:arrows/resplendence_arrow=true}] run \
function weapons:type/arrows/resplendence_arrow/use

execute on attacker \
    if entity @s[advancements={weapons:arrows/shadow_arrow=true}] run \
function weapons:type/arrows/shadow_arrow/use

execute on attacker \
    if entity @s[advancements={weapons:arrows/chaotic_thunder_arrow=true}] run \
function weapons:type/arrows/chaotic_thunder_arrow/use

execute on attacker \
    if entity @s[advancements={weapons:arrows/crimson_claw_arrow=true}] run \
function weapons:type/arrows/crimson_claw_arrow/use

execute on attacker \
    if entity @s[advancements={weapons:arrows/holy_fire_arrow=true}] run \
function weapons:type/arrows/holy_fire_arrow/use

execute on attacker \
    if entity @s[advancements={weapons:arrows/starry_sky_frost_arrow=true}] run \
function weapons:type/arrows/starry_sky_frost_arrow/use