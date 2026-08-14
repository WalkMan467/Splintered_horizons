# ===================================================
# 地震之斧 動畫 重置 / earthquake axe animation reset

    ## Guide [ function weapons:type/axe/earthquake_axe/animation/reset ] >>> 地震之斧 動畫 重置 / earthquake axe animation reset
    ## Guide [ function players:hide/false ] >>> hide 不成立 / hide false branch
    ## Guide [ function players:detect/sneak ] >>> 偵測 sneak / detect sneak
    ## Guide [ function weapons:type/axe/earthquake_axe/animation/main ] >>> 地震之斧 動畫 主迴圈 / earthquake axe animation loop
    ## Guide [ function weapons:type/axe/earthquake_axe/animation/stop ] >>> 地震之斧 動畫 停止 / earthquake axe animation stop

# ===================================================

function players:hide/false

scoreboard players reset @s weapon.earthquake_axe.animation
scoreboard players set @s player.animation.lock 10

tag @s add temp

execute \
    as @e[sort=arbitrary,distance=..10,tag=aj.stellar.camera.camera1,tag=aj.setup,type=item_display] at @s \
    if score @s weapon.earthquake_axe.user.id = @a[limit=1,sort=arbitrary,distance=..10,tag=temp] weapon.earthquake_axe.user.id run \
kill @s[type=item_display]

execute \
    as @e[sort=arbitrary,distance=..10,tag=aj.setup,tag=aj.stellar.root,type=item_display] at @s \
    if score @s weapon.earthquake_axe.user.id = @a[limit=1,sort=arbitrary,distance=..10,tag=temp] weapon.earthquake_axe.user.id run \
function aj:stellar/remove/this

tag @s remove temp
tag @s remove weapon.earthquake_axe.user
tag @s remove weapon.earthquake_axe.finality_tunder
tag @s remove animation
tag @s remove weapon.earthquake_axe.end

scoreboard players set @s player.actionbar.weapon.earthquake_axe 0