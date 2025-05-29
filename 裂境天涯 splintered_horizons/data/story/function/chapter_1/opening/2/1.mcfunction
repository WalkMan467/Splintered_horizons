#透過scoreboard story(dummy) + schedule 指令運行整個劇情

execute if score story.chapter_1.ml.2 story.chapter_1 matches 1 run weather rain 120s
execute if score story.chapter_1.ml.2 story.chapter_1 matches 1 run tellraw @a {"translate": "story.chapter_1.ml.2.1","fallback": "[蘇菲亞] 下雨了...雨滴有如淡淡的哀傷緩緩落下..."}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 2 run tellraw @a {"translate": "story.chapter_1.ml.2.2","fallback": "[蘇菲亞] 當與低落至地面，我內心的哀傷得到了片刻的平息..."}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 3 run tellraw @a {"translate": "story.chapter_1.ml.2.3","fallback": "[蘇菲亞] 有時，我無法理解為何世界留下了我們"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 4 run tellraw @a {"translate": "story.chapter_1.ml.2.4","fallback": "[蘇菲亞] 或許...命運從未公平"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 5 run tellraw @a {"translate": "story.chapter_1.ml.2.5","fallback": "[蘇菲亞] 你我的行走於「虛無」之中"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 6 run tellraw @a {"translate": "story.chapter_1.ml.2.6","fallback": "[蘇菲亞] 就像是這場雨，述說著我們的過往"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 7 run tellraw @a {"translate": "story.chapter_1.ml.2.7","fallback": "[你] 如同你說的，但我們無法停下"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 8 run tellraw @a {"translate": "story.chapter_1.ml.2.8","fallback": "[你] 不過，我想知道你說得「終焉」是一個什麼樣的力量"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 9 run tellraw @a {"translate": "story.chapter_1.ml.2.9","fallback": "[蘇菲亞] 一種結合 死亡、深淵 的終極力量"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 10 run tellraw @a {"translate": "story.chapter_1.ml.2.10","fallback": "[蘇菲亞] 它能附加到武器上面，令它變得更強大"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 11 run tellraw @a {"translate": "story.chapter_1.ml.2.11","fallback": "[蘇菲亞] 不過過度使用這股力量會有反噬"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 12 run tellraw @a {"translate": "story.chapter_1.ml.2.12","fallback": "[蘇菲亞] 所以，每次使用這股力量我需要休息一下"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 13 run tellraw @a {"translate": "story.chapter_1.ml.2.13","fallback": "[蘇菲亞] 我身上的這把刀名叫「神域終焉 · 餘燼之刃」"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 14 run tellraw @a {"translate": "story.chapter_1.ml.2.14","fallback": "[蘇菲亞] 在你的世界或許你可以叫它「終焉之魔劍」"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 15 run tellraw @a {"translate": "story.chapter_1.ml.2.15","fallback": "[蘇菲亞] 它即是「終焉」本身化作成的一把刀"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 16 run tellraw @a {"translate": "story.chapter_1.ml.2.16","fallback": "[蘇菲亞] 平時，這把刀是不能夠完全拔出來"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 17 run tellraw @a {"translate": "story.chapter_1.ml.2.17","fallback": "[蘇菲亞] 就像我說的，過度使用這股力量會反噬"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 18 run tellraw @a {"translate": "story.chapter_1.ml.2.18","fallback": "[蘇菲亞] 當我拔刀時，它將具有完全毀滅整個宇宙的能力"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 19 run tellraw @a {"translate": "story.chapter_1.ml.2.19","fallback": "[蘇菲亞] 不過以目前的情況並不會讓我拔刀"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 20 run tellraw @a {"translate": "story.chapter_1.ml.2.20","fallback": "[蘇菲亞] 在面對「深淵之主」時，我才會拔刀"}
execute if score story.chapter_1.ml.2 story.chapter_1 matches 20 run scoreboard players set #story:icon/story/chapter_1/scebe_2 global.main 1

scoreboard players add story.chapter_1.ml.2 story.chapter_1 1

execute if score story.chapter_1.ml.2 story.chapter_1 matches 1..20 run schedule function story:chapter_1/opening/2/1 8s