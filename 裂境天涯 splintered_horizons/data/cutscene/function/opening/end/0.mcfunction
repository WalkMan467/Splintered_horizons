title @a times 40 40 40
title @a title {"translate":"cutscene.opening.title.8",fallback:"她消失了..."}
title @a subtitle {"translate":"cutscene.opening.title.9",fallback:"為了我，她用盡終焉力量摧毀了一切"}

execute \
    as @a run \
attribute @s movement_speed modifier add cutscene.1 -1 add_multiplied_total

execute \
    as @a run \
attribute @s jump_strength modifier add cutscene.1 -1 add_multiplied_total

execute \
    as @a run \
attribute @s attack_damage modifier add cutscene.1 -1 add_multiplied_total

execute \
    as @a run \
attribute @s entity_interaction_range modifier add cutscene.1 -1 add_multiplied_total

execute \
    as @a run \
attribute @s block_interaction_range modifier add cutscene.1 -1 add_multiplied_total

schedule function cutscene:opening/end/1 8s