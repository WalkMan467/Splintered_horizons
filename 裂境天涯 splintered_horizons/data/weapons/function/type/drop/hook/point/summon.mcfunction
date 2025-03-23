
# effect
summon item_display ~ ~1 ~ {Tags:["hook.effect.point_player","user.vehicle","summon"],teleport_duration:1}

scoreboard players operation @n[type=item_display,tag=summon] weapon.hook.user.id = @s weapon.hook.user.id

scoreboard players set @n[type=item_display,tag=summon] duration 20

rotate @n[type=item_display,tag=summon] ~ ~
ride @s mount @n[type=item_display,tag=summon]

tag @n[type=item_display,tag=summon] remove summon