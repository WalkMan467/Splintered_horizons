# ===================================================
# 查看武器打法 / show the weapon guide

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/ask ] >>> 跳確認介面 / open the confirm prompt
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/guide ] >>> 查看武器打法 / show the weapon guide
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/guide/tellraw ] >>> 打法介紹文字 / the weapon guide text

    ## 由 players:detect/click_event_trigger 的 29 呼叫
    ## 看完打法不會清掉座位分數，按鈕列會再印一次，看完可以直接確認

# ===================================================

execute \
    unless entity @s[tag=unstable_rift.chapter_1.1.weapon_select] run \
return 0

execute \
    unless score @s unstable_rift.player.weapon_select.slot matches 1..3 run \
return 0

execute \
    if score @s unstable_rift.player.weapon_select.slot matches 1 run \
data modify storage unstable_rift:chapter_1.1 weapon_select.ask set from storage unstable_rift:chapter_1.1 weapon_select.slot_1

execute \
    if score @s unstable_rift.player.weapon_select.slot matches 2 run \
data modify storage unstable_rift:chapter_1.1 weapon_select.ask set from storage unstable_rift:chapter_1.1 weapon_select.slot_2

execute \
    if score @s unstable_rift.player.weapon_select.slot matches 3 run \
data modify storage unstable_rift:chapter_1.1 weapon_select.ask set from storage unstable_rift:chapter_1.1 weapon_select.slot_3

function unstable_rift:chapter_1/1/weapon_select/guide/tellraw with storage unstable_rift:chapter_1.1 weapon_select.ask

data remove storage unstable_rift:chapter_1.1 weapon_select.ask
