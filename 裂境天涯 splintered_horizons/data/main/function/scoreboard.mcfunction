function task:scoreboard
function system:scoreboard
function music:scoreboard
function weapons:scoreboard
function effects:scoreboard
function players:scoreboard

scoreboard objectives add duration dummy

scoreboard objectives add hotbar dummy
scoreboard objectives add hotbar_temp dummy
scoreboard objectives add drop minecraft.custom:minecraft.drop "丟物品"
scoreboard objectives add global.main dummy
scoreboard objectives add entity.dummy_mob dummy "假實體"

scoreboard objectives add death_count deathCount [{"text":" ☠ 死亡次數 ☠","color":"red"}]

scoreboard objectives add player.leave_game minecraft.custom:minecraft.leave_game "玩家離開"