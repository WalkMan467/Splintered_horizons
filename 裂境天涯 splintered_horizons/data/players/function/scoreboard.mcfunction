scoreboard objectives add player.id dummy
scoreboard objectives add player.hide dummy
scoreboard objectives add player.gamemode dummy
scoreboard objectives add player.disable_movement dummy "玩家禁用移動"
scoreboard objectives add player.health health

scoreboard objectives add player.mana dummy "玩家魔力值"
scoreboard objectives add player.ultimate dummy "玩家爆發"
scoreboard objectives add player.die_detect dummy "死亡偵測"
scoreboard objectives add player.backup dummy "玩家備份"
scoreboard objectives add player.backup.timer dummy "玩家備份計時器"
scoreboard objectives add player.actionbar.state_machine dummy "玩家 actionbar 狀態機"
scoreboard objectives add player.actionbar.state_machine.timer dummy "玩家 actionbar 狀態機持續時間"
scoreboard objectives add player.animation.lock dummy "強制鎖玩家動畫"
scoreboard objectives add player.infinite.mana dummy "玩家 無限魔力"
scoreboard objectives add player.click.interval dummy "使用間隔"
scoreboard objectives add player.disable.elytra_switch dummy "[玩家] 禁用滑翔翼切換"

scoreboard objectives add player.detect.drop minecraft.custom:minecraft.drop "偵測玩家丟棄"
scoreboard objectives add player.detect.air dummy "[玩家] 空中時間"

# 觸發器

scoreboard objectives add backup trigger
scoreboard objectives add backtracking trigger
scoreboard players enable @a backup
scoreboard players enable @a backtracking

scoreboard players add @a player.ultimate 0
scoreboard players add @a player.infinite.mana 0

scoreboard players add @a player.animation.lock 0
scoreboard players add @a player.backup 0
scoreboard players add @a player.backup.timer 0
scoreboard players add @a player.actionbar.state_machine 0
scoreboard players add @a player.click.interval 0