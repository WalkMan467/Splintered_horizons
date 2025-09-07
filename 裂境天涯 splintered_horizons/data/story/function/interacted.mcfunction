# General Interaction Feedback


execute as 00000001-0000-0015-0000-003300000005 at @s if data entity @s interaction.timestamp if score story.chapter_1.campfire.1 story.chapter_1 matches 1..44 run function story:chapter_1/opening/1/1
execute as 00000002-0000-0139-0000-00370000000b at @s if data entity @s interaction.timestamp if score story.chapter_1.campfire.3 story.chapter_1 matches 1..28 run function story:chapter_1/opening/3/1
execute as 00000016-0000-0139-0000-00370000000b at @s if data entity @s interaction.timestamp if score story.chapter_1.campfire.2 story.chapter_1 matches 1..28 run function story:chapter_1/opening/2/1

# Chapter 2
execute as 00000016-0000-0015-0000-003300000005 at @s if data entity @s interaction.timestamp if score story.chapter_2.campfire.1 story.chapter_2 matches 1..7 run function story:chapter_2/campfire/1/1
execute as 00000019-0000-0015-0000-003300000005 at @s if data entity @s interaction.timestamp if score story.chapter_2.campfire.2 story.chapter_2 matches 1..46 run function story:chapter_2/campfire/2/1
execute as 00000019-0000-0015-0000-003300000033 at @s if data entity @s interaction.timestamp if score story.chapter_2.campfire.3 story.chapter_2 matches 1..16 run function story:chapter_2/campfire/3/1

# Safe Area Elina 1
execute as 00000002-0000-0016-0000-003300000016 at @s if data entity @s interaction.timestamp if score story.safe_area.elina.1 story.safe_area matches 1..14 run function story:safe_area/1