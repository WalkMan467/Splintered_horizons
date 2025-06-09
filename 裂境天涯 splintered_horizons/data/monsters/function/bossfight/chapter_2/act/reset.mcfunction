scoreboard players set #bossfight.chapter_2.act.setup global.main 1
scoreboard players set #bossfight.chapter_2.act_temp global.main 0
scoreboard players set #bossfight.chapter_2.act global.main 0

function story:chapter_2/stop

scoreboard players set story.chapter_2.bossfight.ml story.chapter_2 1
