 # The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

execute if score story.chapter_2.bossfight.ml story.chapter_2 matches 1 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.1","fallback": "［拉爾西斯］你果然還活著呀，救世主"}
execute if score story.chapter_2.bossfight.ml story.chapter_2 matches 2 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2","fallback": "［拉爾西斯］但即便世界再度殞落為什麼仍像我揮劍"}
execute if score story.chapter_2.bossfight.ml story.chapter_2 matches 3 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.3","fallback": "［你］令我揮劍的原因永遠只有一個"}
execute if score story.chapter_2.bossfight.ml story.chapter_2 matches 4 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.4","fallback": "［你］無論是往昔、今日、未來"}
execute if score story.chapter_2.bossfight.ml story.chapter_2 matches 5 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.5","fallback": "［你］那些被摧毀的世界與人們所期望的未來不應該有你們決定"}
execute if score story.chapter_2.bossfight.ml story.chapter_2 matches 6 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.6","fallback": "［蘇菲亞］我們曾失去一切，但不代表這次就會是失敗"}
execute if score story.chapter_2.bossfight.ml story.chapter_2 matches 7 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.7","fallback": "［蘇菲亞］因為世界的命運不該由你掌控"}

scoreboard players add story.chapter_2.bossfight.ml story.chapter_2 1

execute if score story.chapter_2.bossfight.ml story.chapter_2 matches 1..7 run schedule function story:chapter_2/bossfight/1/1 8s