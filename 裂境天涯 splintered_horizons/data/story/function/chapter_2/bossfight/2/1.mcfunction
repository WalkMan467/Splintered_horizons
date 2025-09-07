 # The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 1 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.1","fallback": "［拉爾西斯］你擊敗我了，但難道你真的認為你能贏嗎?"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 2 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.2","fallback": "［拉爾西斯］你根本擊敗不了深淵之主"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 3 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.3","fallback": "［拉爾西斯］就像世界永遠都有惡人，人性本質是惡的"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 4 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.4","fallback": "［拉爾西斯］那些罪惡造就了深淵力量本質"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 5 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.5","fallback": "［拉爾西斯］即便你真的殺死深淵之主"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 5 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.5","fallback": "［拉爾西斯］但未來還會有更多深淵之主誕生，只是時間問題"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 6 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.6","fallback": "［拉爾西斯］直至永恆，你仍要戰鬥到底?"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 7 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.7","fallback": "［你］或許我們無法完全擊敗深淵"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 8 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.8","fallback": "［你］但我們仍會反抗，即便它看似無意義"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 9 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.9","fallback": "［蘇菲亞］無論是命運的不公奪走了我們的一切"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 10 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.10","fallback": "［蘇菲亞］但我們應該活在當下，去創造那微小的意義"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 11 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.11","fallback": "［蘇菲亞］即便再次失敗，但至少我們反抗了，我們為了世界而戰"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 12 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.12","fallback": "［拉爾西斯］在死之前我居然能被你打動"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 13 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.13","fallback": "［拉爾西斯］若你真的做到擊敗深淵之主"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 14 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.14","fallback": "［拉爾西斯］那就去重新創造新的人類文明吧"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 15 run tellraw @a {"translate": "story.chapter_2.bossfight.ml.2.15","fallback": "(片刻間，拉爾西斯也嚥下最後一口氣)"}
execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 16 as @a at @s if biome ~ ~ ~ world_area:chapter_2/dusks_fractured_maw run function story:chapter_2/bossfight/2/sound

scoreboard players add story.chapter_2.bossfight.ml.2 story.chapter_2 1

execute if score story.chapter_2.bossfight.ml.2 story.chapter_2 matches 1..16 run schedule function story:chapter_2/bossfight/2/1 8s