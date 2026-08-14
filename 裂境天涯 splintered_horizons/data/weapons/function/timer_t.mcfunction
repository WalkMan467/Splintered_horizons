# ===================================================
# 效果計時遞減 / effect timer tick

    ## Guide [ function weapons:timer_t ] >>> 效果計時遞減 / effect timer tick
    ## Guide [ function main:tick ] >>> tick / tick

# ===================================================

# 這裡是倒數計時：每 tick 減 1，減到 0 就是冷卻好了。
# 掛在 #main:timer 底下，整個世界每 tick 只跑一次，不會被玩家數量乘算。
# 玩家身上的 CD 用這種寫法就夠了。
#
# 怪物那邊不能這樣寫。monsters:main 是逐怪執行的，而且 monsters:guide 有
# limit=30 的上限，怪一多就會漏跑 tick，倒數就會越走越慢。
#
# 所以怪的技能冷卻改成「記下次可以放技能的時間」：
#
#   monster.skill.cast.at  記的是第幾 tick 可以放，不是還要等幾 tick
#   檢查    if score @s monster.skill.cast.at <= #now global.time
#   設定    store result ... run random value A..B
#           operation ... monster.skill.cast.dur = ... cast.at
#           operation ... monster.skill.cast.at += #now global.time
#
# 差別在於「比大小」跑幾次結果都一樣，漏跑幾 tick 也不會走針；
# 「減 1」跑幾次就差幾次。
#
# 新增武器 CD 就在下面加一行 remove。
# 新增怪物技能請照 cast.at 那套，不要對它 remove 1。
# ===================================================

scoreboard players remove @a[scores={player.click.interval=1..}] player.click.interval 1

scoreboard players remove @a[scores={weapon.ruins_of_the_finality.effect.time=1..}] weapon.ruins_of_the_finality.effect.time 1
scoreboard players remove @a[scores={weapon.earthquake_axe.cd=1..}] weapon.earthquake_axe.cd 1
scoreboard players remove @a[scores={weapon.earthquake_axe.effect.cd=1..}] weapon.earthquake_axe.effect.cd 1

scoreboard players remove @a[scores={weapon.ruins_of_the_finality.effect.count.delay=1..}] weapon.ruins_of_the_finality.effect.count.delay 1
scoreboard players remove @a[scores={weapon.ruins_of_the_finality.blade.animation=1..}] weapon.ruins_of_the_finality.blade.animation 1

scoreboard players remove @a[scores={weapon.effect.resplendence=1..}] weapon.effect.resplendence 1
scoreboard players remove @a[scores={weapon.effect.shadow=1..}] weapon.effect.shadow 1
scoreboard players remove @a[scores={weapon.effect.chaotic_thunder=1..}] weapon.effect.chaotic_thunder 1
scoreboard players remove @a[scores={weapon.effect.crimson_claw=1..}] weapon.effect.crimson_claw 1
scoreboard players remove @a[scores={weapon.effect.holy_fire=1..}] weapon.effect.holy_fire 1
scoreboard players remove @a[scores={weapon.effect.starry_sky_frost=1..}] weapon.effect.starry_sky_frost 1
scoreboard players remove @a[scores={weapon.ruins_of_the_finality.enhanced_finality_skill=1..}] weapon.ruins_of_the_finality.enhanced_finality_skill 1
scoreboard players remove @a[scores={weapon.zeuss_lightning.use=1..}] weapon.zeuss_lightning.use 1
scoreboard players remove @a[scores={weapon.rock_crushing_greatsword.use=1..}] weapon.rock_crushing_greatsword.use 1
scoreboard players remove @a[scores={weapon.flame_of_finality.attack.timer=1..}] weapon.flame_of_finality.attack.timer 1

scoreboard players remove @a[scores={weapon.ethereal_shatterstorm_compound_bow.use=1..}] weapon.ethereal_shatterstorm_compound_bow.use 1
scoreboard players remove @a[scores={weapon.sagittarius.use=1..}] weapon.sagittarius.use 1
scoreboard players remove @a[scores={weapon.heavenly_guiding_bow.use=1..}] weapon.heavenly_guiding_bow.use 1


execute \
    if score #is_water_sword_demon.passive? global.main matches 0.. run \
scoreboard players remove #is_water_sword_demon.passive? global.main 1


execute \
    if score #is_nightfall.passive? global.main matches 0.. run \
scoreboard players remove #is_nightfall.passive? global.main 1


execute \
    if score #kill_sword_shoot.timer global.main matches 0.. run \
scoreboard players remove #kill_sword_shoot.timer global.main 1


execute \
    as @a \
    if score @s weapon.ruins_of_the_finality.blade.animation matches 0 run \
tag @a remove animation
scoreboard players reset @a[scores={weapon.ruins_of_the_finality.blade.animation=0}] weapon.ruins_of_the_finality.blade.animation