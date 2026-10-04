# ===================================================
# 劍 天地乖離開闢之星 右鍵 觸發 / kill sword right click activate

    ## Guide [ function weapons:type/sword/kill_sword/rc/use ] >>> 劍 天地乖離開闢之星 右鍵 觸發 / kill sword right click activate
    ## Guide [ function weapons:type/sword/kill_sword/main ] >>> 劍 天地乖離開闢之星 主迴圈 / kill sword loop
    ## Guide [ function weapons:type/sword/kill_sword/rc/raycast/use ] >>> 劍 天地乖離開闢之星 右鍵 射線 觸發 / kill sword right click raycast activate

# ===================================================

schedule function weapons:type/sword/kill_sword/main 1t

tag @s add weapon.kill_sword.user

execute \
    positioned ~ ~1.5 ~ run \
function weapons:type/sword/kill_sword/rc/raycast/use

scoreboard players set #kill_sword_shoot.timer global.main 2

execute \
    if score #kill_sword_shoot.timer.temp global.main matches 1 run \
playsound minecraft:voice.kill_sword_shoot voice @a ~ ~1 ~ 0.5 1

scoreboard players add #kill_sword_shoot.timer.temp global.main 1


execute \
    unless score #kill_sword_shoot.timer.temp global.main matches 10.. run \
return 0

playsound minecraft:voice.kill_sword_shoot voice @a ~ ~1 ~ 0.1 1


execute \
    store result score #kill_sword_shoot.timer.temp global.main run \
random value 5..10