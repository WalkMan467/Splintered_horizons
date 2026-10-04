# ===================================================
# 點到座位 / a pedestal got clicked

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/act ] >>> 點到座位 / a pedestal got clicked
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/ask ] >>> 跳確認介面 / open the confirm prompt
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/spawn/slot ] >>> 擺出單一座位 / place one pedestal

    ## 由 unstable_rift:chapter_1/loop 以 interaction 身分呼叫
    ## 座位編號是從 interaction 的 weapon_select.slot.<n> tag 反推的，記到玩家身上給 ask 與 confirm 用

# ===================================================

execute \
    if entity @s[tag=unstable_rift.chapter_1.1.weapon_select.slot.1] \
    on target \
    if entity @s[tag=unstable_rift.chapter_1.1.weapon_select] run \
scoreboard players set @s unstable_rift.player.weapon_select.slot 1

execute \
    if entity @s[tag=unstable_rift.chapter_1.1.weapon_select.slot.2] \
    on target \
    if entity @s[tag=unstable_rift.chapter_1.1.weapon_select] run \
scoreboard players set @s unstable_rift.player.weapon_select.slot 2

execute \
    if entity @s[tag=unstable_rift.chapter_1.1.weapon_select.slot.3] \
    on target \
    if entity @s[tag=unstable_rift.chapter_1.1.weapon_select] run \
scoreboard players set @s unstable_rift.player.weapon_select.slot 3

execute \
    on target \
    if entity @s[tag=unstable_rift.chapter_1.1.weapon_select] run \
function unstable_rift:chapter_1/1/weapon_select/ask

data remove entity @s interaction
