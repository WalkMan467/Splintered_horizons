# ===================================================
# Clear Tai Chis Shadow Main Function

    ## Guide [ function armors:type/tai_chis_shadow/main ] >>> Main Function
    ## Guide [ function armors:type/tai_chis_shadow/clear ] >>> Clear Tai Chis Shadow Armor Effect
    ## Guide [ function armors:type/tai_chis_shadow/eqipment ] >>> Armor Eqipment
    ## Guide [ function armors:type/tai_chis_shadow/take_off ] >>> Armor Take Off
    ## Guide [ function armors:type/tai_chis_shadow/use ] >>> Trigger Tai Chis Shadow Armor Effect

# ===================================================

advancement revoke @s only armors:type/tai_chis_shadow/use


execute \
    unless predicate armors:type/tai_chis_shadow/random_chance run \
return 0

scoreboard players add @s armor.tai_chis_shadow.restore_mana 0
scoreboard players set @s armor.tai_chis_shadow.restore_mana_magnification 0
scoreboard players add @s armor.tai_chis_shadow.effect 0


execute \
    if items entity @s armor.head *[custom_data={tai_chis_shadow:1b} | custom_data={tai_chis_shadow:1}] run \
scoreboard players add @s armor.tai_chis_shadow.restore_mana_magnification 1

execute \
    if items entity @s armor.chest *[custom_data={tai_chis_shadow:1b} | custom_data={tai_chis_shadow:1}] run \
scoreboard players add @s armor.tai_chis_shadow.restore_mana_magnification 1

execute \
    if items entity @s armor.legs *[custom_data={tai_chis_shadow:1b} | custom_data={tai_chis_shadow:1}] run \
scoreboard players add @s armor.tai_chis_shadow.restore_mana_magnification 1

execute \
    if items entity @s armor.feet *[custom_data={tai_chis_shadow:1b} | custom_data={tai_chis_shadow:1}] run \
scoreboard players add @s armor.tai_chis_shadow.restore_mana_magnification 1




execute \
    if score @s armor.tai_chis_shadow.effect matches 3.. run \
return 0

scoreboard players add @s[scores={armor.tai_chis_shadow.effect=..2}] armor.tai_chis_shadow.effect 1

title @s title {"text":"\uE003","font":"minecraft:screen"}
title @s times 10 10 10

title @s[scores={armor.tai_chis_shadow.effect=0}] subtitle [{"text":""},{"text":"☯☯☯","color":"#212121"}]
title @s[scores={armor.tai_chis_shadow.effect=1}] subtitle [{"text":""},{"text":"☯","color":"white"},{"text":"☯☯","color":"#212121"}]
title @s[scores={armor.tai_chis_shadow.effect=2}] subtitle [{"text":""},{"text":"☯☯","color":"white"},{"text":"☯","color":"#212121"}]
title @s[scores={armor.tai_chis_shadow.effect=3}] subtitle [{"text":""},{"text":"☯☯☯","color":"white"}]


playsound minecraft:block.trial_spawner.ominous_activate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.note_block.snare voice @a ~ ~1 ~ 1 1

playsound minecraft:block.note_block.basedrum voice @a ~ ~1 ~ 1 1

scoreboard players set @s armor.chestplate.effect.actived 1