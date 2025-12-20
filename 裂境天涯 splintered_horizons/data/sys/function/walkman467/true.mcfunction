execute \
    if score #sys.walkman467 global.main matches 1 \
    if score #sys.walkman467_temp global.main matches 1 run \
return 0

scoreboard players set #sys.walkman467_temp global.main 1
scoreboard players set sys.walkman467 story.chapter_2 1

execute positioned 765 146 995 rotated 135 0 run \
summon mannequin ~ ~ ~ \
    {\
        Silent:1b,\
        Invulnerable:1b,\
        CustomNameVisible:1b,\
        Team:"NocollisionRule",\
        immovable:true, \
        hide_description:true, \
        Tags: \
            [ \
                "sys.walkman467" \
            ], \
        CustomName: \
            { \
                "bold":true, \
                "color":"gold", \
                "italic":false,\
                "text":"WalkMan467" \
            }, \
        profile:"WalkMan467" \
    }

execute positioned 765 146 995 unless score #sys.walkman467.glowing global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=sys.walkman467,type=mannequin] run data modify entity @s Glowing set value 1b

summon interaction 765 146 995 \
    { \
        height:2, \
        UUID:[I; 5215, 531512, 5312, 251412] \
    }