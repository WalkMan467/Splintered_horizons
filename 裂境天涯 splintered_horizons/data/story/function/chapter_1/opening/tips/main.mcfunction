#隨機提示文字
execute store result score #story.chapter_1.tips global.main run random value 1..4

execute if score #story.chapter_1.tips global.main matches 1 run tellraw @a [{"text":"[","color": "white"},{"text":"WalkMan467","bold": true,"color": "dark_green"},{"text":"]: ","color": "white"},{"translate":"tips.chapter_1.1","fallback":"有時，我們的人生會失去很多東西，同時也會獲得很多東西，珍惜一切，別墮入虛無之中","color":"gold"}]

execute if score #story.chapter_1.tips global.main matches 2 run tellraw @a [{"text":"[","color": "white"},{"text":"WalkMan467","bold": true,"color": "dark_green"},{"text":"]: ","color": "white"},{"translate":"tips.chapter_1.2","fallback":"設問: 人如何真正的幸福，並不是錢、也不是愛情，放開一切，享受當下到你完成了里程碑，你發自內心的開心，這就是幸福","color":"gold"}]

execute if score #story.chapter_1.tips global.main matches 3 run tellraw @a [{"text":"[","color": "white"},{"text":"WalkMan467","bold": true,"color": "dark_green"},{"text":"]: ","color": "white"},{"translate":"tips.chapter_1.3","fallback":"世界被黑暗壟罩，就像是你墮入虛無一樣，迷失於森林之中，但你只需要一位引路人去從新引導你，那殘餘的光將有你創造","color":"gold"}]

execute if score #story.chapter_1.tips global.main matches 4 run tellraw @a [{"text":"[","color": "white"},{"text":"WalkMan467","bold": true,"color": "dark_green"},{"text":"]: ","color": "white"},{"translate":"tips.chapter_1.4","fallback":"我喜歡毛毛雨，雨滴的落下，使我在現實中無盡的憂鬱、痛苦、內耗暫時得到前所未有了寧靜，雨停了，即是新的開始","color":"gold"}]