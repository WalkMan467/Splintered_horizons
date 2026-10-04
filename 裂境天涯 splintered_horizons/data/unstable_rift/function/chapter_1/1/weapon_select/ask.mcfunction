# ===================================================
# 跳確認介面 / open the confirm prompt

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/act ] >>> 點到座位 / a pedestal got clicked
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/ask ] >>> 跳確認介面 / open the confirm prompt
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/ask/tellraw ] >>> 確認介面文字 / the confirm prompt text
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/confirm ] >>> 確定選這把 / take this weapon
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/guide ] >>> 查看武器打法 / show the weapon guide

# ===================================================

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

function unstable_rift:chapter_1/1/weapon_select/ask/tellraw with storage unstable_rift:chapter_1.1 weapon_select.ask

data remove storage unstable_rift:chapter_1.1 weapon_select.ask
