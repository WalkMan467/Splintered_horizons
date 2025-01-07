scoreboard objectives add player.id dummy
scoreboard objectives add player.defense dummy
scoreboard objectives add player.defense.cd dummy
scoreboard objectives add player.defense.timer dummy
scoreboard objectives add player.defense_point dummy
scoreboard objectives add player.defense_point.max dummy
scoreboard objectives add player.hide dummy
scoreboard objectives add player.gamemode dummy
scoreboard objectives add player.disable_movement dummy "玩家禁用移動"
scoreboard objectives add player.health health

scoreboard objectives add player.mana dummy "玩家魔力值"
scoreboard objectives add player.ultimate dummy "玩家爆發"
scoreboard objectives add player.die_detect dummy "死亡偵測"

scoreboard players add #global player.ultimate 0
scoreboard players add @a player.defense 0
scoreboard players add @a player.defense.cd 0
scoreboard players add @a player.defense.timer 0
scoreboard players add @a player.defense_point 0
scoreboard players set @a player.defense_point.max 5