execute \
    unless entity @s[tag=monster.apostle_of_eternity.lock] run \
return 0

execute \
    if score @s monster.apostle_of_eternity.lock.click matches 4.. run \
    return run \
function monsters:chapter_2/apostle_of_eternity/lock/broken

scoreboard players add @s monster.apostle_of_eternity.lock.click 1
scoreboard players set @s player.actionbar.apostle_of_eternity.lock.1 10

particle block{block_state:"minecraft:iron_chain"} ~ ~1 ~ 0.5 1 0.5 0 100 normal @a

playsound minecraft:block.anvil.land voice @a ~ ~1 ~ 1 2