
# effect
summon item_display ~ ~1 ~ {Tags:["sys.zipline_platform.point_player","user.vehicle","summon"],teleport_duration:1}

scoreboard players operation @n[tag=summon,distance=0..,type=item_display] sys.zipline_platform.id = @s sys.zipline_platform.id

scoreboard players set @n[tag=summon,distance=0..,type=item_display] duration 20

rotate @n[tag=summon,distance=0..,type=item_display] ~ ~
ride @s mount @n[tag=summon,distance=0..,type=item_display]

tag @n[tag=summon,distance=0..,type=item_display] remove summon