## 導向到 [ function world_area:main/loop ] (冒險 / 生存模式區域偵測) (冒險模式區域二級鎖)

    # 提示文字跟切換模式

tellraw @s[gamemode=!survival,gamemode=!spectator,gamemode=!creative] [{"translate": "commands.gamemode.success.self"},{"translate":"gameMode.survival","color": "gold","bold":true}]

gamemode survival @s[gamemode=!survival,gamemode=!spectator,gamemode=!creative]