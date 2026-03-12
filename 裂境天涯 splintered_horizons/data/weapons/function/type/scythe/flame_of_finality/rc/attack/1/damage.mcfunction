tag @s add dmger
tag @p[sort=arbitrary,tag=!atker,tag=weapon.flame_of_finality.user] add atker
scoreboard players set @p[sort=arbitrary,tag=atker,tag=weapon.flame_of_finality.user] atk 150

execute \
    as @p[sort=arbitrary,tag=atker,tag=weapon.flame_of_finality.user] run \
function dmg_formula:weapons/type/scythe/flame_of_finality/attack/1/calculate

playsound minecraft:entity.item.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.item.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.item.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.breeze.jump voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.breeze.jump voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.breeze.shoot voice @a ~ ~1 ~ 1 0.875
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 0.5 1.25

particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.25 0.25 0.25 0 60 force @a
particle minecraft:lava ~ ~1 ~ 0 0 0 0 10 normal @a
particle minecraft:flame ~ ~1 ~ 0 0 0 0.1 20 normal @a

execute \
    unless items entity @s armor.head * run return run \
item replace entity @s armor.head with poisonous_potato[enchantments={"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":1},enchantment_glint_override=false,tooltip_display={},equippable={slot:"head",asset_id:"air"},item_model="air",custom_data={motion:"flame_of_finality"}]

item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"weapons:type/scythe/flame_of_finality/rc/attack/1/motion":1}}