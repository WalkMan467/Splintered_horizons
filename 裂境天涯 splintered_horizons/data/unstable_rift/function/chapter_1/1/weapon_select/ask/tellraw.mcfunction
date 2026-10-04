# ===================================================
# 確認介面文字 / the confirm prompt text

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/ask ] >>> 跳確認介面 / open the confirm prompt
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/ask/tellraw ] >>> 確認介面文字 / the confirm prompt text
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/button ] >>> 確認 / 查看打法 按鈕列 / the confirm and guide button row

# ===================================================

$tellraw @s [{"text":"[","color":"white"},{"text":"⚔","color":"#b96cff"},{"text":"]","color":"white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"unstable_rift.chapter_1.1.weapon_select.1","fallback":"你確定要選擇 %s 作為防身武器嗎?","color":"white","with":[{"translate":"$(name)","color":"$(color)","underlined":true,"bold":true}]}]
tellraw @s ""
tellraw @s [{"translate":"unstable_rift.chapter_1.1.weapon_select.2","fallback":"選定後將無法更換，確認後立刻進入重塑空間","color":"white","bold":true,"underlined":false}]

function unstable_rift:chapter_1/1/weapon_select/button

playsound minecraft:entity.cat.death master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .61 1

# ==============================
# Translate Keys
# ==============================
# "unstable_rift.chapter_1.1.weapon_select.1" : "你確定要選擇 %s 作為防身武器嗎?",
# "unstable_rift.chapter_1.1.weapon_select.2" : "選定後將無法更換，確認後立刻進入重塑空間",
