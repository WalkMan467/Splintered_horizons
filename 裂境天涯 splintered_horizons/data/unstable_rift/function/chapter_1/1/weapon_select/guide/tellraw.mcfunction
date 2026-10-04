# ===================================================
# 打法介紹文字 / the weapon guide text

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/guide ] >>> 查看武器打法 / show the weapon guide
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/guide/tellraw ] >>> 打法介紹文字 / the weapon guide text
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/button ] >>> 確認 / 查看打法 按鈕列 / the confirm and guide button row

    ## 每把武器固定 5 行打法，key 是 unstable_rift.chapter_1.1.weapon_select.guide.<武器 id>.1 ~ .5
    ## 加新武器進池子時這裡不用改，只要把那 5 個 key 補進語言檔

# ===================================================

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

$tellraw @s ["",{"translate":"unstable_rift.chapter_1.1.weapon_select.guide.title","fallback":"【%s】打法","color":"white","bold":true,"with":[{"translate":"$(name)","color":"$(color)","bold":true}]}]
tellraw @s ""

$tellraw @s ["",{"translate":"unstable_rift.chapter_1.1.weapon_select.guide.$(id).1","color":"white"},{"text":"\n"},{"translate":"unstable_rift.chapter_1.1.weapon_select.guide.$(id).2","color":"white"},{"text":"\n"},{"translate":"unstable_rift.chapter_1.1.weapon_select.guide.$(id).3","color":"white"},{"text":"\n"},{"translate":"unstable_rift.chapter_1.1.weapon_select.guide.$(id).4","color":"white"},{"text":"\n"},{"translate":"unstable_rift.chapter_1.1.weapon_select.guide.$(id).5","color":"white"}]
tellraw @s ""

function unstable_rift:chapter_1/1/weapon_select/button

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1 1

# ==============================
# Translate Keys
# ==============================
# "unstable_rift.chapter_1.1.weapon_select.guide.title" : "【%s】打法",

# "unstable_rift.chapter_1.1.weapon_select.guide.wind_sword.1" : "被動【風速斬】自己會觸發，CD 13 秒",
# "unstable_rift.chapter_1.1.weapon_select.guide.wind_sword.2" : "劍氣是沿路徑掃過去的，把怪引成一條線再打",
# "unstable_rift.chapter_1.1.weapon_select.guide.wind_sword.3" : "擊飛可以打斷怪物的近戰起手",
# "unstable_rift.chapter_1.1.weapon_select.guide.wind_sword.4" : "觸發後 5 秒內有【輝煌之光】，趁這段接普攻",
# "unstable_rift.chapter_1.1.weapon_select.guide.wind_sword.5" : "攻速偏慢，別跟怪貼著互砍",

# "unstable_rift.chapter_1.1.weapon_select.guide.grip_of_withering.1" : "技能【侵蝕】要站進怪群中心再放，3 格內全上凋零",
# "unstable_rift.chapter_1.1.weapon_select.guide.grip_of_withering.2" : "凋零是持續傷害，先鋪再補普攻，不用急著收",
# "unstable_rift.chapter_1.1.weapon_select.guide.grip_of_withering.3" : "被動【萬劍穿心】只在你有【至深之暗】符文時吃得到",
# "unstable_rift.chapter_1.1.weapon_select.guide.grip_of_withering.4" : "沒觸發機率會往上疊，連砍越久越容易出劍陣",
# "unstable_rift.chapter_1.1.weapon_select.guide.grip_of_withering.5" : "稀有武器面板不高，走持續傷害打長線",

# "unstable_rift.chapter_1.1.weapon_select.guide.morning_light.1" : "技能【黃昏之殤】靠普攻命中觸發，不用額外按鍵",
# "unstable_rift.chapter_1.1.weapon_select.guide.morning_light.2" : "聖劍落點是 3 格範圍，打成群的怪最賺",
# "unstable_rift.chapter_1.1.weapon_select.guide.morning_light.3" : "被動會疊怪物減防，疊滿 30% 再去打硬怪",
# "unstable_rift.chapter_1.1.weapon_select.guide.morning_light.4" : "身上有【輝煌之光】時 CD 直接刷新，能連續丟聖劍",
# "unstable_rift.chapter_1.1.weapon_select.guide.morning_light.5" : "【神聖之火】是自身增益，輸出不要斷手",

# "unstable_rift.chapter_1.1.weapon_select.guide.nightfall.1" : "先用普攻把【月蝕】疊起來，最多 12 層",
# "unstable_rift.chapter_1.1.weapon_select.guide.nightfall.2" : "層數夠了再按 [使用] 引爆，每層 150% 基礎傷害",
# "unstable_rift.chapter_1.1.weapon_select.guide.nightfall.3" : "被動每命中 5 次會自己爆一次 250% 真實傷害",
# "unstable_rift.chapter_1.1.weapon_select.guide.nightfall.4" : "技能期間是血月型態，附帶【至深之暗】符文 5 秒",
# "unstable_rift.chapter_1.1.weapon_select.guide.nightfall.5" : "有【緋紅之爪】符文時技能會補血，可以當續航用",

# "unstable_rift.chapter_1.1.weapon_select.guide.rock_crushing_greatsword.1" : "長按 [使用] 防禦，這把吃的是格檔節奏",
# "unstable_rift.chapter_1.1.weapon_select.guide.rock_crushing_greatsword.2" : "怪物出手後 0.05 ~ 0.25 秒內格檔可以完全免傷",
# "unstable_rift.chapter_1.1.weapon_select.guide.rock_crushing_greatsword.3" : "完美格檔給一層【反擊】，下一刀打出 3 格 250%",
# "unstable_rift.chapter_1.1.weapon_select.guide.rock_crushing_greatsword.4" : "格檔晚一點 (0.25 ~ 0.55) 還有 40% 減傷，不算白按",
# "unstable_rift.chapter_1.1.weapon_select.guide.rock_crushing_greatsword.5" : "有符文時格檔還會給吸收，適合硬吃大招",

# "unstable_rift.chapter_1.1.weapon_select.guide.spider.1" : "技能是拔刀突刺，打直線，前方 200% 基礎傷害",
# "unstable_rift.chapter_1.1.weapon_select.guide.spider.2" : "突刺有位移，可以切進怪群也可以脫離包圍",
# "unstable_rift.chapter_1.1.weapon_select.guide.spider.3" : "被動要普攻命中 10 次才出，別只放技能",
# "unstable_rift.chapter_1.1.weapon_select.guide.spider.4" : "被動會掛【折磨】，每秒 75% 持續 5 秒",
# "unstable_rift.chapter_1.1.weapon_select.guide.spider.5" : "有符文時技能多補 5 次 75%，優先對硬怪放",

# "unstable_rift.chapter_1.1.weapon_select.guide.twilight_wind.1" : "普攻疊【疾風能量】，每層加 0.1 攻速",
# "unstable_rift.chapter_1.1.weapon_select.guide.twilight_wind.2" : "層數越高風刃越多，攻速也越快",
# "unstable_rift.chapter_1.1.weapon_select.guide.twilight_wind.3" : "疊到 5 層會清空，所以 4 層那一刀最賺",
# "unstable_rift.chapter_1.1.weapon_select.guide.twilight_wind.4" : "清空後重新疊，整場是循環不是爆發",
# "unstable_rift.chapter_1.1.weapon_select.guide.twilight_wind.5" : "攻速堆起來就別停手，斷手等於自己把節奏打掉",

# "unstable_rift.chapter_1.1.weapon_select.guide.heavenly_guiding_bow.1" : "射出去的箭會自己鎖最近的怪，不用太care準度",
# "unstable_rift.chapter_1.1.weapon_select.guide.heavenly_guiding_bow.2" : "近距離亂射也打得到，被圍的時候很好用",
# "unstable_rift.chapter_1.1.weapon_select.guide.heavenly_guiding_bow.3" : "有符文時從 1 發變連續 3 發",
# "unstable_rift.chapter_1.1.weapon_select.guide.heavenly_guiding_bow.4" : "3 發命中又會續符文，接得起來就一直有",
# "unstable_rift.chapter_1.1.weapon_select.guide.heavenly_guiding_bow.5" : "箭打完就只能肉搏，留幾隻保命",

# "unstable_rift.chapter_1.1.weapon_select.guide.sagittarius.1" : "蓄力滿還能再進二段，二段才是這把的本體",
# "unstable_rift.chapter_1.1.weapon_select.guide.sagittarius.2" : "二段箭會冰凍，打到地面或怪都會引爆",
# "unstable_rift.chapter_1.1.weapon_select.guide.sagittarius.3" : "引爆能打斷怪物技能，用來斷大招起手",
# "unstable_rift.chapter_1.1.weapon_select.guide.sagittarius.4" : "中斷後 5 秒內那隻怪不能再被冰凍，別連著丟",
# "unstable_rift.chapter_1.1.weapon_select.guide.sagittarius.5" : "二段蓄力給 10 秒符文，接其他符文機制很順",

# "unstable_rift.chapter_1.1.weapon_select.guide.thunder_duet.1" : "先用【閃電鏈】打出 3 道閃電並掛【雷霆標記】",
# "unstable_rift.chapter_1.1.weapon_select.guide.thunder_duet.2" : "再普攻命中被標記的怪會定格 1 秒並把周圍怪彈開",
# "unstable_rift.chapter_1.1.weapon_select.guide.thunder_duet.3" : "定格後你會跳到空中，落下要再命中同一隻才吃 350%",
# "unstable_rift.chapter_1.1.weapon_select.guide.thunder_duet.4" : "落地那下是 6 格範圍，怪越密越賺",
# "unstable_rift.chapter_1.1.weapon_select.guide.thunder_duet.5" : "兩個技能會互相重置 CD，照順序打就能一直循環",

# "unstable_rift.chapter_1.1.weapon_select.guide.morphing_beast.1" : "用 [使用] 切 鐮刀 / 劍 / 斧頭 三種型態",
# "unstable_rift.chapter_1.1.weapon_select.guide.morphing_beast.2" : "要跑路切鐮刀，拿速度",
# "unstable_rift.chapter_1.1.weapon_select.guide.morphing_beast.3" : "要硬吃傷害切斧頭，傷害吸收 II 有 10 秒",
# "unstable_rift.chapter_1.1.weapon_select.guide.morphing_beast.4" : "要輸出切劍，力量 I 撐 5 秒",
# "unstable_rift.chapter_1.1.weapon_select.guide.morphing_beast.5" : "每次切換都給符文，一直切就一直有增益",

