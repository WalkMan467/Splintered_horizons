# General Interaction Feedback

# Opening

    # 1

    execute \
        as 0a9c3558-d906-415b-8345-8352bf7ce93c at @s \
        if data entity @s interaction.timestamp \
        if score story.opening.1 story.chapter_1 matches 1..12 run \
    function story:opening/1/1

    # 2

    execute \
        as 91eefa12-8ab0-434d-afb8-569f21a20c4c at @s \
        if data entity @s interaction.timestamp \
        if score story.opening.2 story.chapter_1 matches 1..7 run \
    function story:opening/2/1

    # 3

    execute \
        as 74d8b464-9467-4d70-b164-d21e23242a04 at @s \
        if data entity @s interaction.timestamp \
        if score story.opening.3 story.chapter_1 matches 1..13 run \
    function story:opening/3/1

    # 5

    execute \
        as 955fb949-151d-48af-8ecf-e50c4b6a49f8 at @s \
        if data entity @s interaction.timestamp \
        if score story.opening.5 story.chapter_1 matches 1..9 run \
    function story:opening/5/1

    # 6

    execute \
        as cdded6a9-9832-41bb-9ed9-c3efcdca5e00 at @s \
        if data entity @s interaction.timestamp run \
    function story:opening/6/run

    # 7

    execute \
        as 4a38d84b-fffb-4be9-b828-fe41c7c7750b at @s \
        if data entity @s interaction.timestamp run \
    function story:opening/7/run

# Chapter 1

    # Main Quests

    execute \
        as 00000001-0000-0015-0000-003300000005 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_1.mq.1 story.chapter_1 matches 1..44 run \
    function story:chapter_1/mq/1/1

    execute \
        as 00000016-0000-0139-0000-00370000000b at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_1.mq.2 story.chapter_1 matches 1..28 run \
    function story:chapter_1/mq/2/1

    execute \
        as 00000002-0000-0139-0000-00370000000b at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_1.mq.3 story.chapter_1 matches 1..28 run \
    function story:chapter_1/mq/3/1

    execute \
        as 00000002-0000-01ff-0000-02270000000b at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_1.mq.4 story.chapter_1 matches 1..6 run \
    function story:chapter_1/mq/4/1

    execute \
        as ffffa1bb-0000-1074-ffff-5b6d00007d70 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_1.mq.5 story.chapter_1 matches 1..10 run \
    function story:chapter_1/mq/5/1

    # Side Quests

    execute \
        as 00000002-0000-0139-0000-003700000033 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_1.sq.1 story.chapter_1 matches 1..13 run \
    function story:chapter_1/sq/1/1

    execute \
        as 0004e729-0000-1087-0000-084b00089f81 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_1.sq.2 story.chapter_1 matches 1..27 run \
    function story:chapter_1/sq/2/1


# Chapter 2

    # Main Quests

    execute \
        as 00000016-0000-0015-0000-003300000005 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.ml.1 story.chapter_2 matches 1..7 run \
    function story:chapter_2/ml/1/1

    execute \
        as 00000019-0000-0015-0000-003300000033 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.ml.3 story.chapter_2 matches 1..16 run \
    function story:chapter_2/ml/3/1

    execute \
        as fffffb31-0000-c819-0000-c94100050e3b at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.ml.6 story.chapter_2 matches 1..52 run \
    function story:chapter_2/ml/6/1

    execute \
        as fffe1e47-0000-c819-0000-c94100050e3b at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.ml.7 story.chapter_2 matches 1..18 run \
    function story:chapter_2/ml/7/1

    execute \
        as 4ab7f628-ad6e-49eb-90c4-22f6285ed3ba at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.ml.8 story.chapter_2 matches 1..18 run \
    function story:chapter_2/ml/8/1

    execute \
        as b4cc1055-f505-4721-aaf7-1b2d953e57dd at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.ml.9 story.chapter_2 matches 1..28 run \
    function story:chapter_2/ml/9/1

    execute \
        as 129d8265-191e-3dd8-e6e1-9f01f1d78c14 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.ml.10 story.chapter_2 matches 1..10 run \
    function story:chapter_2/ml/10/1

# Chapter 3

    # Main Quests

    execute \
        as 0007d070-0000-c819-0000-c94100050e3b at @s \
        if data entity @s interaction.timestamp \
        if score story.other.chapter_2.1 story.other matches 1..18 run \
    function story:other/chapter_2/1/1

# Safe Area

    # irina 1

    execute \
        as 00000002-0000-0016-0000-003300000016 at @s \
        if data entity @s interaction.timestamp \
        if score story.safe_area.irina.1 story.safe_area matches 1..14 run \
    function story:safe_area/1

    # Selena 1

    execute \
        as 00000002-0000-0016-0000-003300000037 at @s \
        if data entity @s interaction.timestamp \
        if score story.safe_area.selena.1 story.safe_area matches 1..40 run \
    function story:safe_area/selena/1

    # Melisna 1

    execute \
        as 00000842-0000-04c8-0000-007900000029 at @s \
        if data entity @s interaction.timestamp \
        if score story.safe_area.melisna.1 story.safe_area matches 1..20 run \
    function story:safe_area/melisna/1

    # Main Line 2

    execute \
        as 0000000c-0000-0015-0000-001800000019 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 1..20 run \
    function story:chapter_2/in_safe_zone/2/1

    # Main Line 3

    execute \
        as 0000000c-0000-0015-0000-00ff00000019 at @s \
        if data entity @s interaction.timestamp \
        if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 1..36 run \
    function story:chapter_2/in_safe_zone/3/1