# ===================================================
# 劍 蜘蛛 效果 score / sword spider effect score

    ## Guide [ function weapons:type/sword/spider/effect/score ] >>> 劍 蜘蛛 效果 score / sword spider effect score
    ## Guide [ function weapons:type/sword/spider/effect/screen_fx ] >>> 劍 蜘蛛 效果 screen fx / sword spider effect screen fx
    ## Guide [ function weapons:type/sword/spider/effect/atk ] >>> 劍 蜘蛛 效果 atk / sword spider effect atk
    ## Guide [ function dmg_formula:weapons/type/sword/spider/dot/calculate ] >>> weapons 劍 蜘蛛 dot 計算 / weapons sword spider dot calculate

# ===================================================


scoreboard players add @s[scores={weapon.spider_passive=..10}] weapon.spider_passive 1
scoreboard players set @s player.actionbar.weapon.spider 10


execute \
    as @a[scores={weapon.spider_passive=10}] run \
function weapons:type/sword/spider/effect/screen_fx

tellraw @s[scores={weapon.spider_passive=10}] [{"text":"[","color":"green","bold":true},{"text":"寬恕無關慈悲","color":"white","bold":true},{"text":"] ","color":"green","bold":true},{"text":"發動！","color":"green","bold":true}]


execute \
    as @a[scores={weapon.spider_passive=10}] run \
function weapons:type/sword/spider/effect/atk

# mob

execute \
    as @s[scores={weapon.spider_passive=10}] at @s run \
tag @e[type=!#minecraft:dummy_mob,distance=..6,type=!player] add dmger

execute \
    as @s[scores={weapon.spider_passive=10}] at @s \
    as @e[type=!player,type=!#dummy_mob,distance=..6] at @s run \
function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:100}

tag @s[tag=!atker] add atker


# atk

execute \
    as @s[scores={weapon.spider_passive=10}] run \
scoreboard players operation @s dmg_formula.atk_percentage = .spider_passive atk


execute \
    as @a[scores={weapon.spider_passive=10}] run \
function dmg_formula:weapons/type/sword/spider/dot/calculate

scoreboard players set @s[scores={weapon.spider_passive=10}] weapon.spider_passive 0


advancement revoke @a only weapons:type/sword/spider/attack