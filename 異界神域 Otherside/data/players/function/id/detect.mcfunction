#偵測玩家數量給Tag
## global.main = 全局的暫存記分板
execute store result score #player_count global.main if entity @a
execute unless score #player_count global.main = #player_count.record global.main run function players:id/regive_id

schedule function players:id/detect 1t