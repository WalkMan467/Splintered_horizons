scoreboard objectives add duration dummy

scoreboard objectives add hotbar dummy
scoreboard objectives add hotbar_temp dummy
scoreboard objectives add drop minecraft.custom:minecraft.drop "丟物品"
scoreboard objectives add global.main dummy
scoreboard objectives add entity.dummy_mob dummy "假實體"
scoreboard objectives add main.raycast dummy "射線追蹤"
scoreboard objectives add main.gamerule dummy
scoreboard objectives add main.particle dummy
scoreboard objectives add main.difficulty dummy
scoreboard objectives add main.gamemode dummy
scoreboard objectives add main.3d_dizziness dummy "3D暈眩"
scoreboard objectives add main.light_sensitivity dummy "光敏感"
scoreboard objectives add main.trigger trigger "Main 觸發器"
scoreboard objectives add main.tombstone_system trigger "是否開啟墓碑系統"
scoreboard objectives add main.raycast trigger "Raycast 射線偵測"

scoreboard players add #monument.area_1 global.main 0
scoreboard players add #monument.area_2 global.main 0
scoreboard players add #monument.area_3 global.main 0
scoreboard players add #monument.area_4 global.main 0
scoreboard players add #monument.area_5 global.main 0
scoreboard players add #monument.area_6 global.main 0
scoreboard players add #monument.area_7 global.main 0
scoreboard players add #monument.area_8 global.main 0

scoreboard players add #tombstone_system global.main 0

scoreboard players enable @a main.tombstone_system
scoreboard players set @a main.tombstone_system 0

scoreboard players enable @a main.trigger
scoreboard players set @a main.trigger 0

team add team.player "[隊伍] 玩家"

team modify team.player friendlyFire false

team join team.player @a