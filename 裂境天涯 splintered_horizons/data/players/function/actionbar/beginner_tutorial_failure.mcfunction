# ===================================================
# beginner_tutorial_failure

    ## Guide [ function players:actionbar/beginner_tutorial_failure ] >>> beginner_tutorial_failure
    ## Guide [ function players:actionbar/main ] >>> players:actionbar main

# ===================================================

execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

# Display Actionbar
title @s actionbar [{"translate": "tips.beginner_tutorial.act.failure","color": "red","bold": true, "italic":false}]