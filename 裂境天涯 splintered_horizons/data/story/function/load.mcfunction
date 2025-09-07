scoreboard players add #story.chapter_1.opening.1_temp global.main 0
scoreboard objectives add story.chapter_1 dummy "[主線] Chapter 1 - 劇情"
scoreboard objectives add story.chapter_2 dummy "[主線] Chapter 2 - 劇情"
scoreboard objectives add story.safe_area dummy "[主線] 安全區 - 劇情"

scoreboard objectives add story.click_event.trigger trigger "[主線] 觸發器"
scoreboard players add @a story.click_event.trigger 0
scoreboard players enable @a story.click_event.trigger