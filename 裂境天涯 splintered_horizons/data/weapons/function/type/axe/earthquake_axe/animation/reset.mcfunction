function players:hide/false

scoreboard players reset @s weapon.earthquake_axe.animation
scoreboard players set @s player.animation.lock 10

tag @s add temp
execute as @e[sort=arbitrary,distance=..10,tag=aj.stellar_animation.camera.camera3,tag=aj.setup,type=item_display] at @s if score @s weapon.earthquake_axe.user.id = @a[limit=1,sort=arbitrary,distance=..10,tag=temp] weapon.earthquake_axe.user.id run kill @s[type=item_display]
execute as @e[sort=arbitrary,distance=..10,tag=aj.setup,tag=aj.stellar_animation.root,type=item_display] at @s if score @s weapon.earthquake_axe.user.id = @a[limit=1,sort=arbitrary,distance=..10,tag=temp] weapon.earthquake_axe.user.id run function animated_java:stellar_animation/remove/this

tag @s remove temp
tag @s remove weapon.earthquake_axe.user
tag @s remove weapon.earthquake_axe.finality_tunder
tag @s remove animation
tag @s remove weapon.earthquake_axe.end

scoreboard players set @s player.actionbar.weapon.earthquake_axe 0