# General Interaction Feedback


execute as 00000001-0000-0015-0000-003300000005 at @s if data entity @s interaction.timestamp if score story.chapter_1.mq.1 story.chapter_1 matches 1..44 run function story:chapter_1/mq/1/1
execute as 00000002-0000-0139-0000-00370000000b at @s if data entity @s interaction.timestamp if score story.chapter_1.mq.3 story.chapter_1 matches 1..28 run function story:chapter_1/mq/3/1
execute as 00000016-0000-0139-0000-00370000000b at @s if data entity @s interaction.timestamp if score story.chapter_1.mq.2 story.chapter_1 matches 1..28 run function story:chapter_1/mq/2/1
execute as 00000002-0000-0139-0000-003700000033 at @s if data entity @s interaction.timestamp if score story.chapter_1.sq.1 story.chapter_1 matches 1..13 run function story:chapter_1/sq/1/1


# Chapter 2
execute as 00000016-0000-0015-0000-003300000005 at @s if data entity @s interaction.timestamp if score story.chapter_2.ml.1 story.chapter_2 matches 1..7 run function story:chapter_2/ml/1/1
execute as 00000019-0000-0015-0000-003300000005 at @s if data entity @s interaction.timestamp if score story.chapter_2.ml.2 story.chapter_2 matches 1..46 run function story:chapter_2/ml/2/1
execute as 00000019-0000-0015-0000-003300000033 at @s if data entity @s interaction.timestamp if score story.chapter_2.ml.3 story.chapter_2 matches 1..16 run function story:chapter_2/ml/3/1

# Safe Area

# Elina 1
execute as 00000002-0000-0016-0000-003300000016 at @s if data entity @s interaction.timestamp if score story.safe_area.elina.1 story.safe_area matches 1..14 run function story:safe_area/1

# Selena 1
execute as 00000002-0000-0016-0000-003300000037 at @s if data entity @s interaction.timestamp if score story.safe_area.selena.1 story.safe_area matches 1..40 run function story:safe_area/selena/1

# Melisna 1
execute as 00000842-0000-04c8-0000-007900000029 at @s if data entity @s interaction.timestamp if score story.safe_area.melisna.1 story.safe_area matches 1..20 run function story:safe_area/melisna/1

# Main Line 2
execute as 0000000c-0000-0015-0000-001800000019 at @s if data entity @s interaction.timestamp if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 1..20 run function story:chapter_2/in_safe_zone/2/1

# Main Line 3
execute as 0000000c-0000-0015-0000-00ff00000019 at @s if data entity @s interaction.timestamp if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 1..36 run function story:chapter_2/in_safe_zone/3/1