# ===================================================
# 血滴子蜘蛛 流血 施加並騎乘 / bloody blade spider bleeding apply

    ## Guide [ function monsters:chapter_3/bloody_blade_spider/effect/bleeding/use ] >>> 血滴子蜘蛛 流血 施加並騎乘 / bloody blade spider bleeding apply
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/0 ] >>> 血滴子蜘蛛 技能1 落地擒抱 / bloody blade spider skill 1 grab
    ## Guide [ function monsters:chapter_3/bloody_blade_spider/1/remove_tag ] >>> 血滴子蜘蛛 技能1 清除暫時標籤 / bloody blade spider skill 1 clear tags
    ## Guide [ function players:stop_animation ] >>> stop animation

# ===================================================

function monsters:chapter_3/bloody_blade_spider/1/remove_tag

tag @s add forced_interrupt_animation
function players:stop_animation

ride @s mount @n[sort=arbitrary,distance=..6,tag=victim,type=spider]

title @s title ""
title @s subtitle [{"text":"[","color": "dark_red"},{"translate":"cse.status_effects.bleeding","color": "dark_red"},{"text":"]","color": "dark_red"}]
title @s times 20 20 20
playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.5 2

function cse:status_effects/apply/bleeding/use {duration:2147483647, tick_rate:40, dot:20, max:100}

advancement grant @s only players:icon/status_effects/bleeding