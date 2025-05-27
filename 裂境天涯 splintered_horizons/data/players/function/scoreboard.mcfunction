# 常用
scoreboard objectives add player.id dummy "[玩家] ID"
scoreboard objectives add player.hide dummy "[玩家] 隱藏"
scoreboard objectives add player.gamemode dummy "[玩家] 遊戲模式"
scoreboard objectives add player.health health "[玩家] 血量"
scoreboard objectives add player.hurt_time dummy "[玩家] 受傷時間"
scoreboard objectives add player.ultimate dummy "[玩家] 終焉之眼CD"
scoreboard objectives add player.death_count dummy [{"text":"💀","bold":true,"color":"red"},{"translate":"tips.player_death.3","bold":false,"color":"white"},{"text":"💀","bold":true,"color":"red"}]


scoreboard players add @a player.ultimate 0

# ==================================================================================================

# 數據備份
scoreboard objectives add player.backup dummy "[玩家] 數據備份"
scoreboard objectives add player.backup.timer dummy "[玩家] 數據備份計時器"

scoreboard objectives add backup trigger
scoreboard objectives add backtracking trigger
scoreboard players enable @a backup
scoreboard players enable @a backtracking
scoreboard players add @a player.backup 0
scoreboard players add @a player.backup.timer 0

# ==================================================================================================

# actionbar
scoreboard objectives add player.actionbar.state_machine dummy "[玩家] actionbar 狀態機"
scoreboard objectives add player.actionbar.state_machine.timer dummy "[玩家] actionbar 狀態機持續時間"


scoreboard players add @a player.actionbar.state_machine 0

# ==================================================================================================
# 其他
scoreboard objectives add player.animation.lock dummy "[玩家] 強制鎖玩家動畫"
scoreboard objectives add player.infinite.mana dummy "[玩家] 無限魔力"
scoreboard objectives add player.click.interval dummy "[玩家] 使用間隔"
scoreboard objectives add player.auto_crafting.brick dummy "[玩家] 自動合成 紅磚頭"
scoreboard objectives add player.auto_crafting.coal dummy "[玩家] 自動合成 木棒"
scoreboard objectives add player.bow dummy "[玩家] 箭矢偵測附魔"

scoreboard players add @a player.infinite.mana 0
scoreboard players add @a player.animation.lock 0
scoreboard players add @a player.click.interval 0
scoreboard players add @a player.auto_crafting.brick 0

# ==================================================================================================
# 禁用
scoreboard objectives add player.disable.elytra_switch dummy "[玩家] 禁用滑翔翼切換"
scoreboard objectives add player.disable.movement dummy "[玩家] 禁用移動"

# ==================================================================================================
# 偵測
scoreboard objectives add player.detect.drop minecraft.custom:minecraft.drop "[玩家] 偵測丟棄"
scoreboard objectives add player.detect.air dummy "[玩家] 空中時間"
scoreboard objectives add player.detect.death deathCount "死亡偵測"

# ==================================================================================================