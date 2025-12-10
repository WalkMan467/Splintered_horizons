## Redirected to [ function world_area:main/loop ] (冒險 / 生存模式區域偵測) (冒險模式區域二級鎖)

    # 提示文字跟切換模式

execute unless score @s player.gamemode.change.display_delay matches 1.. run tellraw @s[gamemode=!survival,gamemode=!spectator,gamemode=!creative] [{"translate": "commands.gamemode.success.self","with": [{"translate":"gameMode.survival","color": "gold","bold":true}]}]

gamemode survival @s[gamemode=!survival,gamemode=!spectator,gamemode=!creative]
scoreboard players set @s player.gamemode.change.display_delay 40