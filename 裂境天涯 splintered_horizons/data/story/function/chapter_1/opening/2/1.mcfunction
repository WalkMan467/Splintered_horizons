#透過scoreboard story(dummy) + schedule 指令運行整個劇情

execute if score story.chapter_1.ml story.chapter_1 matches 45 run weather rain 120s
execute if score story.chapter_1.ml story.chapter_1 matches 45 run tellraw @a {"translate": "story.chapter_1.ml.45","fallback": "[雨夜奈] 下雨了...雨滴有如淡淡的哀傷緩緩落下..."}
execute if score story.chapter_1.ml story.chapter_1 matches 46 run tellraw @a {"translate": "story.chapter_1.ml.46","fallback": "[雨夜奈] 當與低落至地面，我內心的哀傷得到了片刻的平息..."}
execute if score story.chapter_1.ml story.chapter_1 matches 47 run tellraw @a {"translate": "story.chapter_1.ml.47","fallback": "[雨夜奈] 有時，我無法理解為何世界留下了我們"}
execute if score story.chapter_1.ml story.chapter_1 matches 48 run tellraw @a {"translate": "story.chapter_1.ml.48","fallback": "[雨夜奈] 或許...命運從未公平"}
execute if score story.chapter_1.ml story.chapter_1 matches 49 run tellraw @a {"translate": "story.chapter_1.ml.49","fallback": "[雨夜奈] 你我的行走於「虛無」之中"}
execute if score story.chapter_1.ml story.chapter_1 matches 50 run tellraw @a {"translate": "story.chapter_1.ml.50","fallback": "[雨夜奈] 就像是這場雨，述說著我們的過往"}
execute if score story.chapter_1.ml story.chapter_1 matches 51 run tellraw @a {"translate": "story.chapter_1.ml.51","fallback": "[你] 如同你說的，但我們無法停下"}
execute if score story.chapter_1.ml story.chapter_1 matches 52 run tellraw @a {"translate": "story.chapter_1.ml.52","fallback": "[你] 不過，我想知道你說得「終焉」是一個什麼樣的力量"}
execute if score story.chapter_1.ml story.chapter_1 matches 53 run tellraw @a {"translate": "story.chapter_1.ml.53","fallback": "[雨夜奈] 一種結合 死亡、深淵 的終極力量"}
execute if score story.chapter_1.ml story.chapter_1 matches 54 run tellraw @a {"translate": "story.chapter_1.ml.54","fallback": "[雨夜奈] 它能附加到武器上面，令它變得更強大"}
execute if score story.chapter_1.ml story.chapter_1 matches 55 run tellraw @a {"translate": "story.chapter_1.ml.55","fallback": "[雨夜奈] 不過過度使用這股力量會有反噬"}
execute if score story.chapter_1.ml story.chapter_1 matches 56 run tellraw @a {"translate": "story.chapter_1.ml.56","fallback": "[雨夜奈] 所以，每次使用這股力量我需要休息一下"}
execute if score story.chapter_1.ml story.chapter_1 matches 57 run tellraw @a {"translate": "story.chapter_1.ml.57","fallback": "[雨夜奈] 我身上的這把刀名叫「神域終焉 · 餘燼之刃」"}
execute if score story.chapter_1.ml story.chapter_1 matches 58 run tellraw @a {"translate": "story.chapter_1.ml.58","fallback": "[雨夜奈] 在你的世界或許你可以叫它「終焉之魔劍」"}
execute if score story.chapter_1.ml story.chapter_1 matches 59 run tellraw @a {"translate": "story.chapter_1.ml.59","fallback": "[雨夜奈] 它即是「終焉」本身化作成的一把刀"}
execute if score story.chapter_1.ml story.chapter_1 matches 60 run tellraw @a {"translate": "story.chapter_1.ml.60","fallback": "[雨夜奈] 平時，這把刀是不能夠完全拔出來"}
execute if score story.chapter_1.ml story.chapter_1 matches 61 run tellraw @a {"translate": "story.chapter_1.ml.61","fallback": "[雨夜奈] 就像我說的，過度使用這股力量會反噬"}
execute if score story.chapter_1.ml story.chapter_1 matches 62 run tellraw @a {"translate": "story.chapter_1.ml.62","fallback": "[雨夜奈] 當我拔刀時，它將具有完全毀滅整個宇宙的能力"}
execute if score story.chapter_1.ml story.chapter_1 matches 63 run tellraw @a {"translate": "story.chapter_1.ml.63","fallback": "[雨夜奈] 不過以目前的情況並不會讓我拔刀"}
execute if score story.chapter_1.ml story.chapter_1 matches 64 run tellraw @a {"translate": "story.chapter_1.ml.64","fallback": "[雨夜奈] 在面對「深淵之主」時，我才會拔刀"}

scoreboard players add story.chapter_1.ml story.chapter_1 1

execute if score story.chapter_1.ml story.chapter_1 matches 45..64 run schedule function story:chapter_1/opening/2/1 8s