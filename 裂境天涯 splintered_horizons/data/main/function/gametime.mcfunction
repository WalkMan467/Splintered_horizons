# 別刪除與動這玩意先說
# 這東西本質上就是為大部分武器、裝備、怪物等 timer 解決 @e 效能問題的
# 它溢出自然會回正直到永遠
# 然後這東西缺點是這樣:
    # 1. 單人不會影響，多人由於遊戲不會暫停加上本質上是比大小偵測
    # 所以離開遊戲的玩家某些 timer 相關連結都不會暫停

execute \
    if score #gametime global.main matches 2147483647 run \
    return run \
scoreboard players set #gametime global.main 0

execute \
    if score #gametime global.main matches -2147483648..-1 run \
    return run \
scoreboard players set #gametime global.main 0

scoreboard players add #gametime global.main 1