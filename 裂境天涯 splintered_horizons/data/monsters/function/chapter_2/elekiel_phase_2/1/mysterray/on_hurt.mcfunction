
# refresh hp info

execute \
    on vehicle run \
function monsters:chapter_2/elekiel_phase_2/1/mysterray/info

# on death

execute \
    if data entity @s {Health:0f} \
    on vehicle run \
function monsters:chapter_2/elekiel_phase_2/1/mysterray/on_death

# fx
playsound minecraft:block.vault.deactivate master @a ~ ~ ~ 0.5 1.5
particle minecraft:trial_spawner_detection ~ ~ ~ 0.3 0.3 0.3 0 2 force