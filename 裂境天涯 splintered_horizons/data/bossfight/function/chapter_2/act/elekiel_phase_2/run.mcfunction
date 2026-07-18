execute \
    on target run \
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

execute \
    on target run \
tellraw @s {"translate": "monsters.tips.bossfight","fallback": "--------------- BOSS 戰 ---------------"}

execute \
    on target run \
tellraw @s "\n"

execute \
    on target run \
tellraw @s {"translate": "monsters.elekiel.disc.1","fallback": "BOSS: 「永劫」支配者: 伊萊克爾",italic:true,color:gray}

execute \
    on target run \
tellraw @s {"translate": "monsters.elekiel.disc.2","fallback": "來自賽琳娜舊世界的「永劫」支配者: 伊萊克爾",italic:true,color:gray}

execute \
    on target run \
tellraw @s {"translate": "monsters.elekiel.disc.3","fallback": "在掙脫世界記憶之樹的輪迴之後",italic:true,color:gray}

execute \
    on target run \
tellraw @s {"translate": "monsters.elekiel.disc.4","fallback": "除了擁有操控時間與空間的能力",italic:true,color:gray}

execute \
    on target run \
tellraw @s {"translate": "monsters.elekiel.disc.5","fallback": "也獲得了操控記憶的能力",italic:true,color:gray}

execute \
    on target run \
tellraw @s "\n"

execute \
    on target run \
tellraw @s "--------------------------------------"


execute \
    if score #bossfight.elekiel_phase_2.skill_introduction global.main matches 1.. \
    on target run \
tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.skill_introduction","fallback": "【查看技能介紹】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 15"}}]

execute \
    on target run \
tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.tp","fallback": "【傳送回入口】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 13"}}]

execute \
    on target run \
tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.start","fallback": "【點擊即可開始戰鬥！】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 14"}}]

data remove entity @s interaction

# 註: 之後在執行點擊事件前添加一個偵測是否有效來防止玩家在戰鬥中點擊有效事件

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 1 1 normal @a
playsound minecraft:item.trident.return voice @a ~ ~1 ~ 1 1
playsound minecraft:item.hoe.till voice @a ~ ~1 ~ 1 1