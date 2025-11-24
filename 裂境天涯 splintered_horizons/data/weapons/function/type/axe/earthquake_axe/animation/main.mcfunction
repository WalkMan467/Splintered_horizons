scoreboard players remove @a[scores={weapon.earthquake_axe.animation=0..}] weapon.earthquake_axe.animation 1

tag @a remove temp
tag @e[type=item_display] remove temp

execute as @e[sort=arbitrary,tag=aj.stellar_animation.camera.camera3,tag=!temp,tag=aj.setup,type=item_display] at @s if score @s weapon.earthquake_axe.user.id = @a[limit=1,sort=arbitrary,distance=..10,tag=!temp] weapon.earthquake_axe.user.id run tag @s add temp
execute as @a[sort=arbitrary,gamemode=spectator,tag=weapon.earthquake_axe.user,tag=!temp] at @s if score @s weapon.earthquake_axe.user.id = @e[limit=1,sort=arbitrary,distance=..10,tag=temp,tag=aj.stellar_animation.camera.camera3,tag=aj.setup,type=item_display] weapon.earthquake_axe.user.id run tag @s add temp

execute as @a[tag=temp,tag=weapon.earthquake_axe.user] at @s run spectate @e[sort=arbitrary,limit=1,distance=..10,tag=temp,tag=aj.stellar_animation.camera.camera3,tag=aj.setup,type=item_display]

execute as @a[tag=weapon.earthquake_axe.user,tag=weapon.earthquake_axe.finality_tunder,tag=!weapon.earthquake_axe.end] at @s if score @s weapon.earthquake_axe.animation matches 1..40 if predicate players:detect/input/jump run function weapons:type/axe/earthquake_axe/animation/run

execute as @a[tag=temp,tag=weapon.earthquake_axe.user,tag=weapon.earthquake_axe.finality_tunder] if score @s weapon.earthquake_axe.animation matches 1..40 run scoreboard players set @s player.actionbar.weapon.earthquake_axe 2

execute as @a at @s if score @s weapon.earthquake_axe.animation matches ..0 run function weapons:type/axe/earthquake_axe/animation/reset

schedule function weapons:type/axe/earthquake_axe/animation/main 1t