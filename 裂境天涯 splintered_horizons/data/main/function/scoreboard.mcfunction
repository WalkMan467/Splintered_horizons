function story:load
function music:scoreboard
function weapons:scoreboard
function players:scoreboard
function cutscene:scoreboard
function monsters:scoreboard
function system:scoreboard
function armors:scoreboard
function items:scoreboard

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

scoreboard objectives add death_count deathCount [{"text":" ☠ 死亡次數 ☠","color":"red"}]

scoreboard players add #monument.area_1 global.main 0

scoreboard objectives add player.leave_game minecraft.custom:minecraft.leave_game "玩家離開"

team add team.light "[隊伍] 光明陣營"
team add team.dark "[隊伍] 黑暗怪物陣營"
team add team.player "[隊伍] 玩家"

team modify team.light friendlyFire false
team modify team.dark friendlyFire false
team modify team.player friendlyFire false

team join team.player @a