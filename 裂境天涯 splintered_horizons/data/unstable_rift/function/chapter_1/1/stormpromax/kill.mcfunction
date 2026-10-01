# ===================================================
# 亞斯 死亡收尾 / stormpromax on kill

    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/kill ] >>> 亞斯 死亡收尾 / stormpromax on kill
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/summon ] >>> 召喚 亞斯 / summon stormpromax
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/void ] >>> 亞斯 強制移除 / stormpromax force remove
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/main ] >>> 亞斯 排程 / stormpromax scheduler

# ===================================================
# 執行者 : 剛死掉的亞斯（由 monsters:detect_kill/run 以巨集呼叫）
#
# 沒有做掉落 —— 舊版的 DeathLootTable 指向 monsters:boss/ancient_lorras/stormpromax，
# 那個 loot table 在這個資料包不存在。要加掉落就在這裡補。

bossbar remove minecraft:stormpromax

# 召喚物收乾淨。不清的話技能 2 的海晶燈、技能 3 的高塔史萊姆會永遠留在場上。

execute \
    as @e[tag=stormpm.3.4,type=slime] at @s run \
function monsters:void

execute \
    as @e[tag=stormpm.2,type=item] at @s run \
function monsters:void

kill @e[tag=stormpm.2.2,type=slime]
kill @e[tag=stormpm.1.2,type=marker]
kill @e[tag=stormpm.3.3,type=marker]
kill @e[tag=stormpm.3.5,type=marker]

# 被技能 3 抓上天的人要放回來，不然重力跟禁止離地會卡住

execute \
    as @a[tag=stormpm.3.2] at @s run \
function unstable_rift:chapter_1/1/stormpromax/3/4b

tag @a remove stormpm.3.2
tag @a remove stormpm.3.flytosky
tag @a remove dmger

scoreboard players reset #stormpm.3.duration global.main
