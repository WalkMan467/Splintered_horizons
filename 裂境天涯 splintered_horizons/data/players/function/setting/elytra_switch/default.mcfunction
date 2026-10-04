# 執行者 : 玩家
# 舊存檔沒有這個分數，load 時補上預設值 (開啟)
# 由 players:scoreboard 呼叫，不要從別的地方叫

scoreboard players set @s player.setting.elytra_switch 1
scoreboard players display numberformat @s player.setting.elytra_switch fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}
