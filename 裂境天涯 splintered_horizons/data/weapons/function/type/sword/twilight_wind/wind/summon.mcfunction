
# wind
execute anchored eyes run summon item_display ^ ^ ^ {Tags:[twilight_wind.wind,summon],item:{id:"minecraft:air",count:1,components:{"minecraft:custom_model_data":24}},item_display:"head",teleport_duration:1}
data modify entity @n[tag=summon,limit=1] Rotation set from entity @s Rotation

execute store result score #rdm weapon.twilight_wind.timer run random value 1..5
execute as @n[tag=twilight_wind.wind,tag=summon,type=item_display] at @s if score #rdm weapon.twilight_wind.timer matches 1 run rotate @s ~10 ~10
execute as @n[tag=twilight_wind.wind,tag=summon,type=item_display] at @s if score #rdm weapon.twilight_wind.timer matches 2 run rotate @s ~-10 ~10
execute as @n[tag=twilight_wind.wind,tag=summon,type=item_display] at @s if score #rdm weapon.twilight_wind.timer matches 3 run rotate @s ~10 ~-10
execute as @n[tag=twilight_wind.wind,tag=summon,type=item_display] at @s if score #rdm weapon.twilight_wind.timer matches 4 run rotate @s ~-10 ~-10

scoreboard players set @n[tag=summon,limit=1] duration 20

scoreboard players operation @n[tag=summon,limit=1] player.id = @s player.id

# particle
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 1

# reset
tag @n[tag=summon] remove summon