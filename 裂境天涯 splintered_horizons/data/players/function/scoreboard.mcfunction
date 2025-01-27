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

# 觸發器

scoreboard objectives add backup trigger
scoreboard objectives add backtracking trigger
scoreboard players enable @a backup
scoreboard players enable @a backtracking

scoreboard players add #global player.ultimate 0


scoreboard players add @a player.backup 0
scoreboard players add @a player.backup.timer 0