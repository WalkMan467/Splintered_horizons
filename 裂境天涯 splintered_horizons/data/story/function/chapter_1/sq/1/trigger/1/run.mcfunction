# story.chapter_1.sq.1.6
execute \
    unless score story.chapter_1.sq.1 story.chapter_1 matches 6 run \
tellraw @s \
    [\
        {"text": "(","color": "red"}, \
        {"color": "red", "translate": "tips.player.detect.click_event.trigger.failed"}, \
        {"text": ")","color": "red"} \
    ]

execute \
    unless score story.chapter_1.sq.1 story.chapter_1 matches 6 run \
return 0

scoreboard players set story.chapter_1.sq.1 story.chapter_1 6

function story:chapter_1/sq/1/1