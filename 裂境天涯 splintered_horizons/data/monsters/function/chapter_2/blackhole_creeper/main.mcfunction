execute \
    unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{nbt:"{potion_contents:{custom_effects:[{id:\"minecraft:unluck\",amplifier:2b}]}}"}} run \
return 0

execute \
    positioned ~ ~0.5 ~ run \
function monsters:chapter_2/blackhole_creeper/blackhole/summon

kill @s[type=area_effect_cloud]