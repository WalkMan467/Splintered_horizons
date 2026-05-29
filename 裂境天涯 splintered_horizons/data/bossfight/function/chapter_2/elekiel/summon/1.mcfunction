# 偵測是否為和平模式執行 return / Detect if the difficulty is peaceful, if so, return
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

# 偵測是否開始 BOSS 戰 / Detect if the boss fight has started, if not, return
execute \
    if score #bossfight global.main matches 1.. run \
    return run \
function bossfight:chapter_2/act/failure

# 偵測是否已經生成 BOSS 實體 / Detect if the boss entity has already been spawned
execute \
    if entity @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] run \
    return run \
function bossfight:chapter_2/act/failure

# Bossfight start
scoreboard players set #bossfight global.main 1

# 移除 BOSS 戰互動實體 / Remove bossfight interaction
function bossfight:chapter_2/act/elekiel/1/false

schedule function bossfight:chapter_2/elekiel/summon/2 1t