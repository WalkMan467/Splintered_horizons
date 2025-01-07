
# wind
execute anchored eyes run summon item_display ^ ^ ^ {Tags:[wind_sword.wind,summon],item:{id:"minecraft:air",count:1,components:{"minecraft:custom_model_data":24}},item_display:"head",teleport_duration:1}
data modify entity @n[tag=summon,limit=1] Rotation set from entity @s Rotation
scoreboard players set @n[tag=summon,limit=1] duration 20

scoreboard players operation @n[tag=summon,limit=1] player.id = @s player.id

# particle
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 1

# reset
tag @n[tag=summon] remove summon