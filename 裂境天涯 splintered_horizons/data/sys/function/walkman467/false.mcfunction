
execute \
    if score #sys.walkman467 global.main matches 0 \
    if score #sys.walkman467_temp global.main matches 0 run \
return 0

scoreboard players set #sys.walkman467_temp global.main 0
scoreboard players set sys.walkman467 story.chapter_2 1

kill 0000145f-0008-1c38-0000-14c00003d614

tp @n[sort=arbitrary,tag=sys.walkman467,type=mannequin,distance=..1.5] ~ -255 ~
kill @n[sort=arbitrary,tag=sys.walkman467,type=mannequin,distance=..1.5]