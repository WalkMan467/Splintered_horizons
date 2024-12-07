function task:scoreboard

scoreboard objectives add duration dummy

scoreboard objectives add hotbar dummy
scoreboard objectives add hotbar_temp dummy
scoreboard objectives add drop minecraft.custom:minecraft.drop "丟物品"
scoreboard objectives add global.main dummy
scoreboard objectives add entity.dummy_mob dummy "假實體"

scoreboard objectives add death_count deathCount [{"text":" ☠ 死亡次數 ☠","color":"red"}]

scoreboard objectives add hide.player.animation dummy "隱藏玩家動畫"
scoreboard players add @a hide.player.animation 0