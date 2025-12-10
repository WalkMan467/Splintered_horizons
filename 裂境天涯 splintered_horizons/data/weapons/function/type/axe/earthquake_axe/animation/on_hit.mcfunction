function particle:zeuss_lightning_wave/use
particle dust_pillar{block_state:"minecraft:cobbled_deepslate"} ~ ~1 ~ 0.5 0.5 0.5 0 200 normal

scoreboard players add @s weapon.earthquake_axe.hit.sfx 1

execute if score @s weapon.earthquake_axe.hit.sfx matches 1 run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1
execute if score @s weapon.earthquake_axe.hit.sfx matches 1 run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1

execute if score @s weapon.earthquake_axe.hit.sfx matches 2 run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1.05
execute if score @s weapon.earthquake_axe.hit.sfx matches 2 run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1.05
execute if score @s weapon.earthquake_axe.hit.sfx matches 2 run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1.05

execute if score @s weapon.earthquake_axe.hit.sfx matches 3.. run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1.1
execute if score @s weapon.earthquake_axe.hit.sfx matches 3.. run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1.1
execute if score @s weapon.earthquake_axe.hit.sfx matches 3.. run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1.1
execute if score @s weapon.earthquake_axe.hit.sfx matches 3.. run playsound minecraft:voice.attack_sound voice @a ~ ~1 ~ 3 1.1

execute if score @s weapon.earthquake_axe.hit.sfx matches 3.. run playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 3 1.5


tag @s remove temp
tag @a remove temp
execute if score @s weapon.earthquake_axe.user.id = @a[limit=1,sort=arbitrary,distance=..10,tag=!temp] weapon.earthquake_axe.user.id run tag @s add temp
execute as @a[tag=!temp] if score @s weapon.earthquake_axe.user.id = @n[distance=..10,limit=1,sort=arbitrary,tag=temp,tag=aj.stellar_animation.root,type=item_display] weapon.earthquake_axe.user.id run tag @s add temp

execute at @s[tag=temp] run tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=!atker,tag=temp,distance=..8] add atker

scoreboard players set #weapon.earthquake_axe.atk atk 50
scoreboard players set @p[tag=atker,tag=temp,distance=..8] atk 150
scoreboard players operation #weapon.earthquake_axe.atk atk *= @s weapon.earthquake_axe.hit.sfx
scoreboard players operation @p[tag=atker,tag=temp,distance=..8] atk += #weapon.earthquake_axe.atk atk
scoreboard players reset #weapon.earthquake_axe.atk atk

execute as @p[distance=..8,sort=arbitrary,tag=atker,tag=temp] run function dmg_formula:weapons/type/axe/earthquake_axe/calculate

tag @s remove temp
tag @a remove temp
