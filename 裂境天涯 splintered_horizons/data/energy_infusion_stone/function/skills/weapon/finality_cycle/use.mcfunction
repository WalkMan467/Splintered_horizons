# 執行者 : 玩家
# 整個裝備使用 + CD 偵測是否轉好 + 計算甚麼時候可以放的時間

advancement revoke @s only energy_infusion_stone:skills/weapon/finality_cycle/use

execute \
    unless score @s energy_infusion_stone.finality_cycle.cd matches -2147483648..2147483647 run \
    return run \
function energy_infusion_stone:skills/weapon/finality_cycle/cd

execute \
    unless score #gametime global.main >= @s energy_infusion_stone.finality_cycle.cd run \
return 0

# Reset CD

function energy_infusion_stone:skills/weapon/finality_cycle/cd

# execute \
#     if predicate {type:"minecraft:all_of",terms:[{type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:slots":{weapon.mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"energy_infusion_stone:skills/weapon/finality_cycle",levels:1}]}}}}},{type:"minecraft:inverted",term:{type:"minecraft:random_chance",chance:0.2}}]} run \
# return 0

# execute \
#     if predicate {type:"minecraft:all_of",terms:[{type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:slots":{weapon.mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"energy_infusion_stone:skills/weapon/finality_cycle",levels:2}]}}}}},{type:"minecraft:inverted",term:{type:"minecraft:random_chance",chance:0.4}}]} run \
# return 0

# execute \
#     if predicate {type:"minecraft:all_of",terms:[{type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:slots":{weapon.mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"energy_infusion_stone:skills/weapon/finality_cycle",levels:3}]}}}}},{type:"minecraft:inverted",term:{type:"minecraft:random_chance",chance:0.6}}]} run \
# return 0

title @s title {"text":"\uE004","font":"minecraft:screen"}

title @s times 10 0 10

scoreboard players set #passive energy_infusion_stone.finality_cycle.cd 100

scoreboard players operation @s player.ultimate -= #passive energy_infusion_stone.finality_cycle.cd

# 防止終焉之眼CD變負
execute \
    if score @s player.ultimate matches ..-1 run \
scoreboard players set @s player.ultimate 0



# FX / SFX

playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[0.000,0.000,0.000],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 1 10 force @a