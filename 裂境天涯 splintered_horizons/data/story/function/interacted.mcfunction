# 通用交互回饋


execute as 00000001-0000-0015-0000-003300000005 at @s if data entity @s interaction.timestamp if score story.chapter_1.ml story.chapter_1 matches 1..44 run function story:chapter_1/opening/1/1
execute as 00000002-0000-0139-0000-00370000000b at @s if data entity @s interaction.timestamp if score story.chapter_1.ml.3 story.chapter_1 matches 1..28 run function story:chapter_1/opening/3/1
execute as 00000019-0000-0015-0000-003300000005 at @s if data entity @s interaction.timestamp if score story.chapter_2.campfire.1 story.chapter_2 matches 1..4 run function story:chapter_2/campfire/1/1

execute as 0000000c-0000-0015-0000-001800000019 at @s if data entity @s interaction.timestamp if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 1..20 run function story:chapter_2/in_safe_zone/2/1