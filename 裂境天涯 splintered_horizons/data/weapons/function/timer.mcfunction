# ===================================================
# 武器冷卻遞減 / weapon cooldown tick

    ## Guide [ function weapons:timer ] >>> 武器冷卻遞減 / weapon cooldown tick
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

scoreboard players remove @a[scores={weapon.wind_sword.cd=1..}] weapon.wind_sword.cd 1
scoreboard players remove @a[scores={weapon.twilight_wind.cd=1..}] weapon.twilight_wind.cd 1
scoreboard players remove @a[scores={weapon.grip_of_withering.cd=1..}] weapon.grip_of_withering.cd 1

scoreboard players remove @a[scores={weapon.ruins_of_the_finality.cd=1..}] weapon.ruins_of_the_finality.cd 1
scoreboard players remove @a[scores={weapon.nightfall.cd=1..}] weapon.nightfall.cd 1
scoreboard players remove @a[scores={weapon.aquilumera.cd=1..}] weapon.aquilumera.cd 1
scoreboard players remove @a[scores={weapon.echo_rhythm.cd=1..}] weapon.echo_rhythm.cd 1
scoreboard players remove @a[scores={weapon.morphing_beast.cd=1..}] weapon.morphing_beast.cd 1
scoreboard players remove @a[scores={weapon.spider.cd=1..}] weapon.spider.cd 1
scoreboard players remove @a[scores={weapon.morning_light.cd=1..}] weapon.morning_light.cd 1
scoreboard players remove @a[scores={weapon.morning_light.monster.armor.timer=1..}] weapon.morning_light.monster.armor.timer 1
scoreboard players remove @a[scores={weapon.ruins_of_the_finality.effect.cd=1..}] weapon.ruins_of_the_finality.effect.cd 1
scoreboard players remove @a[scores={weapon.flame_of_abyss.cd=1..}] weapon.flame_of_abyss.cd 1
scoreboard players remove @a[scores={weapon.flame_of_abyss.effect.cd=1..}] weapon.flame_of_abyss.effect.cd 1
scoreboard players remove @a[scores={weapon.otherworld_star.timer=0..}] weapon.otherworld_star.timer 1
scoreboard players remove @a[scores={weapon.otherworld_star.cd=1..}] weapon.otherworld_star.cd 1
scoreboard players remove @a[scores={weapon.sagittarius.cd=1..}] weapon.sagittarius.cd 1
scoreboard players remove @a[scores={weapon.heavenly_guiding_bow.cd=1..}] weapon.heavenly_guiding_bow.cd 1
scoreboard players remove @a[scores={weapon.thunder_duet.cd=1..}] weapon.thunder_duet.cd 1
scoreboard players remove @a[scores={weapon.thunder_duet.passive.cd=1..}] weapon.thunder_duet.passive.cd 1
scoreboard players remove @a[scores={weapon.thunder_duet.passive.timer=1..}] weapon.thunder_duet.passive.timer 1

scoreboard players remove @a[scores={weapon.enchantment.bleeding_hit.cd=1..}] weapon.enchantment.bleeding_hit.cd 1