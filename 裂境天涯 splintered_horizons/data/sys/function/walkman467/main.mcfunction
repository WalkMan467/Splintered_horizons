## --- Interaction --- ##

    scoreboard players add #sys.walkman467_temp global.main 0

    # Detect
    execute \
    positioned 765 146 995 store result score #sys.walkman467 global.main \
    if entity @a[distance=..16,gamemode=!spectator]

    execute \
    positioned 765 146 995 \
    as @n[sort=arbitrary,distance=..1,tag=sys.walkman467,type=mannequin] at @s facing entity @p[distance=..16] eyes run \
rotate @s ~ 0

    # Rotate to Player
    execute \
    positioned 765 146 995 \
        as 0007f419-0040-4d6c-0006-52210000cc5a at @s \
        facing entity @p[distance=..16] eyes run \
    rotate @s ~ 0

    # If true;
    execute \
    positioned 765 146 995 \
        if score #sys.walkman467 global.main matches 1 \
        if score #sys.walkman467_temp global.main matches 0 run \
    function sys:walkman467/true

    # Else
    execute \
    positioned 765 146 995 \
        if score #sys.walkman467 global.main matches 0 \
        if score #sys.walkman467_temp global.main matches 1 run \
    function sys:walkman467/false