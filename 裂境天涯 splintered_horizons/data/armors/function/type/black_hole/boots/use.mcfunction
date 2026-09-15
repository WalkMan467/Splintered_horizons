# ===================================================

# use



    ## Guide [ function armors:type/black_hole/boots/use ] >>> use

    ## Guide [ function armors:type/black_hole/boots/eqipment ] >>> eqipment

    ## Guide [ function armors:type/black_hole/boots/take_off ] >>> take off



# ===================================================



# Detect Sneak ; Play Animation Function



# 動畫計時器仍然是倒數制，所以要把絕對時間換算回剩餘 tick
scoreboard players operation @s armor.animation_skills.feet.cd = @s armor.black_hole.boots.cd
scoreboard players operation @s armor.animation_skills.feet.cd -= #gametime global.main





# 第一次使用先建立 CD 分數 / Initialize the cd score on first use
execute \
    unless score @s armor.black_hole.boots.cd matches -2147483648..2147483647 run \
    return run \
function armors:cd {id:"armor.black_hole.boots.cd", cd:30}

# CD 還沒到 / Still on cooldown
execute \
    unless score #gametime global.main >= @s armor.black_hole.boots.cd run \
return 0



execute \
    if score @s player.animation.lock matches 1.. run \
return 0



function armors:type/black_hole/animation/boots/play