
execute \
    if score #story.chapter_2.ml.5 global.main matches 0 \
    if score #story.chapter_2.ml.5_temp global.main matches 0 run \
return 0

scoreboard players set #story.chapter_2.ml.5_temp global.main 0
scoreboard players set story.chapter_2.ml.5 story.chapter_2 1

kill 000052f9-0282-94f1-0000-a4890007fb72

tp 0007f419-0040-4d6c-0006-52210000cc5a ~ -255 ~
kill 0007f419-0040-4d6c-0006-52210000cc5a