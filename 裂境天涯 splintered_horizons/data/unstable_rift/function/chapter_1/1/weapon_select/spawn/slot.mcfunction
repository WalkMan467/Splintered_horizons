# ===================================================
# 擺出單一座位 / place one pedestal

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/spawn ] >>> 擺出 3 個座位 / place the three pedestals
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/spawn/slot ] >>> 擺出單一座位 / place one pedestal
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/act ] >>> 點到座位 / a pedestal got clicked
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/reset/kill ] >>> 殺掉座位實體 / kill the pedestal entities

# ===================================================

# 一個座位兩隻實體：interaction 吃點擊，item 當武器本體
#
# 武器用純掉落物不用 item_display，所以會有原版的浮空旋轉
# PickupDelay 跟 Age 兩個極值一起下才完整：
#   PickupDelay:32767s 撿不起來
#   Age:-32768s        永不消失（Age 是往上數到 6000 就消失，這個值會讓它不計數）
# 這兩個值同時成立的掉落物也不會跟別的堆疊合併，所以三個座位不會互相吃掉
#
# item 擺在 y 61.5，interaction 的框是 61 ~ 62，點得到浮著的武器就等於點到 interaction
#
# slot.$(slot) 這個 tag 是 act 用來反推玩家點到哪個座位的

$execute \
    in minecraft:the_end run \
summon interaction $(x) 61 4396 {Tags:["unstable_rift.chapter_1.1.weapon_select.act","unstable_rift.chapter_1.1.weapon_select.entity","unstable_rift.chapter_1.1.weapon_select.slot.$(slot)"]}

$execute \
    in minecraft:the_end run \
summon item $(x) 61.5 4396 {Item:{id:"$(item)",count:1,components:{"minecraft:item_model":"$(model)"}},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Invulnerable:1b,Motion:[0d,0d,0d],Tags:["unstable_rift.chapter_1.1.weapon_select.entity"]}
