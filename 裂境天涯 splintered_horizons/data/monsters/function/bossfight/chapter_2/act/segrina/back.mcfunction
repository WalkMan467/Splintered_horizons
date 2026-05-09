tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"translate": "monsters.tips.bossfight","fallback": "--------------- BOSS 戰 ---------------"}

tellraw @s {"translate": "monsters.segrina","fallback": "BOSS: 永劫輪迴的墮落者「阿斯尼亞」"}

tellraw @s "\n"

tellraw @s {"translate": "monsters.segrina.disc.1","fallback": "昔日的光芒已然熄滅",italic:true,color:gray}

tellraw @s {"translate": "monsters.segrina.disc.2","fallback": "僅存世界記憶之樹的消逝孤魂，徘徊於時間之外",italic:true,color:gray}

tellraw @s {"translate": "monsters.segrina.disc.3","fallback": "空洞記憶的碎片無盡迴響，在虛空中低語",italic:true,color:gray}

tellraw @s {"translate": "monsters.segrina.disc.4","fallback": "「一切...皆為徒勞...」",italic:true,color:gray}

tellraw @s {"translate": "monsters.segrina.disc.5","fallback": "述說了過去對命運的不甘",italic:true,color:gray}

tellraw @s "\n"

tellraw @s "--------------------------------------"

tellraw @s ""

tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.skill_introduction","fallback": "【查看技能介紹】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 18"}}]
tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.start","fallback": "【點擊即可開始戰鬥！】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 17"}}]

playsound minecraft:item.trident.return voice @s ~ ~1 ~ 1 1
playsound minecraft:item.hoe.till voice @s ~ ~1 ~ 1 1