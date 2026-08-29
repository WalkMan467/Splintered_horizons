scoreboard objectives add duration dummy
scoreboard objectives add main.entity.id dummy "實體 ID"

scoreboard objectives add hotbar dummy
scoreboard objectives add hotbar_temp dummy
scoreboard objectives add drop minecraft.custom:minecraft.drop "丟物品"
scoreboard objectives add global.main dummy
scoreboard objectives add global.time dummy "全域時間基準"
scoreboard objectives add main.raycast dummy "射線追蹤"
scoreboard objectives add main.gamerule dummy
scoreboard objectives add main.particle dummy
scoreboard objectives add main.difficulty dummy
scoreboard objectives add main.gamemode dummy
scoreboard objectives add main.3d_dizziness dummy "3D暈眩"
scoreboard objectives add main.light_sensitivity dummy "光敏感"
scoreboard objectives add main.trigger trigger "Main 觸發器"
scoreboard objectives add main.tombstone_sys trigger "是否開啟墓碑系統"
scoreboard objectives add main.raycast trigger "Raycast 射線偵測"

scoreboard players add #monument.area_1 global.main 0
scoreboard players add #monument.area_2 global.main 0
scoreboard players add #monument.area_3 global.main 0
scoreboard players add #monument.area_4 global.main 0
scoreboard players add #monument.area_5 global.main 0
scoreboard players add #monument.area_6 global.main 0
scoreboard players add #monument.area_7 global.main 0
scoreboard players add #monument.area_8 global.main 0

scoreboard players add #nightmare main.difficulty 0

scoreboard players add #tombstone_sys global.main 0

scoreboard players enable @a main.tombstone_sys
scoreboard players set @a main.tombstone_sys 0

scoreboard players enable @a main.trigger
scoreboard players set @a main.trigger 0

scoreboard players add #index main.entity.id 0

team add team.player "[隊伍] 玩家"
team add glow.aqua
team add glow.dark_aqua
team add glow.black
team add glow.blue
team add glow.dark_blue
team add glow.dark_gray
team add glow.dark_green
team add glow.dark_purple
team add glow.dark_red
team add glow.gold
team add glow.gray
team add glow.green
team add glow.light_purple
team add glow.red
team add glow.white
team add glow.yellow
team add NoCollisionRule NoCollisionRule

team modify NoCollisionRule collisionRule never
team modify glow.aqua color aqua
team modify glow.dark_aqua color dark_aqua
team modify glow.black color black
team modify glow.blue color blue
team modify glow.dark_blue color dark_blue
team modify glow.dark_gray color dark_gray
team modify glow.dark_green color dark_green
team modify glow.dark_purple color dark_purple
team modify glow.dark_red color dark_red
team modify glow.gold color gold
team modify glow.gray color gray
team modify glow.green color green
team modify glow.light_purple color light_purple
team modify glow.red color red
team modify glow.white color white
team modify glow.yellow color yellow

team modify team.player friendlyFire false

team join team.player @a