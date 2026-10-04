# ===================================================
# 地獄之火 召喚 烈陽之影 / pyrosolis summon sunfire shade

    ## Guide [ function weapons:type/sword/pyrosolis/summon/use ] >>> 地獄之火 召喚 烈陽之影 / pyrosolis summon sunfire shade
    ## Guide [ function weapons:type/sword/pyrosolis/rc/base ] >>> 地獄之火 雙生之火 本體 / pyrosolis twin flame base
    ## Guide [ function weapons:type/sword/pyrosolis/summon/clear ] >>> 地獄之火 烈陽之影 收場 / pyrosolis shade cleanup
    ## Guide [ function weapons:type/sword/pyrosolis/summon/follow ] >>> 地獄之火 烈陽之影 跟隨 / pyrosolis shade follow

    ## 執行者 : 玩家
    ## 
    ## 【烈陽之影】= 烈陽使者重生燃燒型態那顆頭顱，掛在 item_display 上
    ##   用 item_display 不用活體，省掉 NoAI / NoGravity / Invulnerable 那一整包，
    ##   也不會被和平難度清掉、不會變殭屍、不會被怪物當目標
    ##   item_display 本身就在 #dummy_mob 裡，技能的傷害選擇器不會誤傷它
    ##   teleport_duration 3 讓每 tick 的 tp 在客戶端補間，看起來是飄的不是跳的
    ##   模型本體是 8x8x8 像素 = 半格，scale 0.75f 之後實際約 0.38 格
    ## 
    ## 跟隨與消失都掛在玩家身上的 weapon.pyrosolis.summon.timer，由 main 推
    ## 配對用 weapon.pyrosolis.summon.id，多人時才不會去推到別人的那隻

# ===================================================

# 舊的那隻先收掉，不要同時飄兩顆

function weapons:type/sword/pyrosolis/summon/clear

# 配對編號

scoreboard players add #index weapon.pyrosolis.summon.id 1
scoreboard players operation @s weapon.pyrosolis.summon.id = #index weapon.pyrosolis.summon.id

summon item_display ^ ^1.5 ^2.5 {Tags:["weapon.pyrosolis.summon","weapon.pyrosolis.summon.spawn","summon"],CustomName:{"translate":"weapon.pyrosolis.sunnoned_creature","color":"#ff5100","bold":true,"fallback":"烈陽之影"},item:{id:"minecraft:apple",count:1,components:{"minecraft:item_model":"freerot:sunfire"}},item_display:"head",billboard:"fixed",brightness:{block:15,sky:15},teleport_duration:3,shadow_radius:0.35f,shadow_strength:0.4f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.75f,0.75f],translation:[0f,0f,0f]}}

scoreboard players operation @e[tag=weapon.pyrosolis.summon.spawn,type=item_display,distance=..8] weapon.pyrosolis.summon.id = #index weapon.pyrosolis.summon.id

tag @e[tag=weapon.pyrosolis.summon.spawn,type=item_display,distance=..8] remove weapon.pyrosolis.summon.spawn

# 00:15

scoreboard players set @s weapon.pyrosolis.summon.timer 300

# 召喚物在場時才會累積【末日】，所以這裡把傷害基準歸零

scoreboard players operation @s weapon.pyrosolis.dmg.last = @s weapon.pyrosolis.dmg.total
scoreboard players set @s weapon.pyrosolis.dmg.pool 0

particle flash{color:[1.000,0.317,0.000,1.00]} ^ ^1.5 ^2.5 0 0 0 0 2 normal @a[scores={main.light_sensitivity=0}]
playsound minecraft:entity.blaze.ambient voice @a ~ ~1 ~ 1 0.75
