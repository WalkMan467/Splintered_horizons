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