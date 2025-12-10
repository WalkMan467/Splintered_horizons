scoreboard players set story.chapter_1.mq.1 story.chapter_1 1
scoreboard players set story.chapter_1.mq.1.2 story.chapter_1 1
weather clear


advancement grant @s only story:icon/story/chapter_1/mq/scebe_1
advancement grant @s only story:icon/story/chapter_1

function story:chapter_1/mq/stop


schedule function story:chapter_1/mq/1/1 1s