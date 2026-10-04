# ===================================================
# 骰 3 把防身武器 / roll the three starter weapons

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll ] >>> 骰 3 把防身武器 / roll the three starter weapons
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/pick ] >>> 從剩餘池抽 1 把 / take one out of the remaining pool
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/spawn ] >>> 擺出 3 個座位 / place the three pedestals

    ## 使用教學
    ## pool 是防身武器清單，要加減武器直接改下面那一行就好
    ## 每抽一把就從 pool 裡移掉，所以三個座位不會重複
    ## arrow:1b 的是弓，確認時會額外補 64 隻箭矢

# ===================================================
# 稀有度由低到高：稀有 -> 史詩 -> 神話 -> 傳說 -> 秘藏
#
# 這個池子只收 稀有 與 史詩 兩階，現在 11 把（稀有 3 + 史詩 8）
# 稀有度看語言檔的 weapon.<id>.type，不要看 custom_data 的 rarity ——
# 終焉凝視者的 custom_data 寫 rare 但語言檔是「弓 / 秘藏」，以語言檔為準
#
# 紀念碑物品是 CTM 的核心物品，不管以後出甚麼都絕對不能進這個池子
# 鎬與投擲物也不收
# 深淵雙重火、終焉之火、終焉遺跡這三把鐮刀還沒做完，不要加進來

data modify storage unstable_rift:chapter_1.1 weapon_select.pool set value [{id:"wind_sword",get:"weapons:get/sword/wind_sword",item:"stone_sword",model:"sword/wind_sword/1",name:"weapon.wind_sword",color:"dark_aqua"},{id:"grip_of_withering",get:"weapons:get/sword/grip_of_withering",item:"stone_sword",model:"sword/grip_of_withering/1",name:"weapon.grip_of_withering",color:"#004557"},{id:"morphing_beast",get:"weapons:get/scythe/morphing_beast",item:"stone_sword",model:"scythe/morphing_beast/1",name:"weapon.morphing_beast",color:"#b30000"},{id:"morning_light",get:"weapons:get/sword/morning_light",item:"stone_sword",model:"minecraft:sword/morning_light/1",name:"weapon.morning_light",color:"#ffd000"},{id:"nightfall",get:"weapons:get/sword/nightfall",item:"stone_sword",model:"sword/nightfall/1",name:"weapon.nightfall",color:"#fbff00"},{id:"rock_crushing_greatsword",get:"weapons:get/sword/rock_crushing_greatsword",item:"stone_sword",model:"minecraft:sword/giant_blade/1",name:"weapon.rock_crushing_greatsword",color:"#b19000"},{id:"spider",get:"weapons:get/sword/spider",item:"iron_sword",model:"sword/spider/1",name:"weapon.spider",color:"#FF2BA3"},{id:"twilight_wind",get:"weapons:get/sword/twilight_wind",item:"stone_sword",model:"sword/wind_sword/2",name:"weapon.twilight_wind",color:"dark_aqua"},{id:"heavenly_guiding_bow",get:"weapons:get/bow/heavenly_guiding_bow",item:"bow",model:"bow/heavenly_guiding_bow/1",name:"weapon.heavenly_guiding_bow",color:"#ffdf88",arrow:1b},{id:"sagittarius",get:"weapons:get/bow/sagittarius",item:"bow",model:"minecraft:bow/sagittarius/1",name:"weapon.sagittarius",color:"#00b2f8",arrow:1b},{id:"thunder_duet",get:"weapons:get/axe/thunder_duet",item:"iron_sword",model:"axe/thunder_duet/1",name:"weapon.thunder_duet",color:"#ffee00"}]

data remove storage unstable_rift:chapter_1.1 weapon_select.picked

function unstable_rift:chapter_1/1/weapon_select/roll/pick
function unstable_rift:chapter_1/1/weapon_select/roll/pick
function unstable_rift:chapter_1/1/weapon_select/roll/pick

data modify storage unstable_rift:chapter_1.1 weapon_select.slot_1 set from storage unstable_rift:chapter_1.1 weapon_select.picked[0]
data modify storage unstable_rift:chapter_1.1 weapon_select.slot_2 set from storage unstable_rift:chapter_1.1 weapon_select.picked[1]
data modify storage unstable_rift:chapter_1.1 weapon_select.slot_3 set from storage unstable_rift:chapter_1.1 weapon_select.picked[2]

data remove storage unstable_rift:chapter_1.1 weapon_select.pool
data remove storage unstable_rift:chapter_1.1 weapon_select.picked
data remove storage unstable_rift:chapter_1.1 weapon_select.max
data remove storage unstable_rift:chapter_1.1 weapon_select.i

function unstable_rift:chapter_1/1/weapon_select/spawn
