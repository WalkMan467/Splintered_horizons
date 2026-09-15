# 沒物理：整顆貼著地形走
# 這種灰燼在 summon 時就帶 NoGravity:1b，Y 完全由下面兩條判斷決定

execute \
    rotated ~ 0 run \
tp @s ^ ^ ^-0.5


# 卡進方塊 → 往上爬

execute \
    at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~0.5 ~


# 腳下是空的 → 往下貼

execute \
    at @s \
    if block ~ ~-0.5 ~ #penetrate run \
tp @s ~ ~-0.5 ~
