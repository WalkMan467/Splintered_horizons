# Guide

    ## 導向到 [ function system:shop_point/main ] >>> 控制商店 GUI 偵測範圍
    ## 導向到 [ function players:actionbar/shop ] >>> 控制 GUI 圖標 

execute as @a at @s if entity @n[type=marker,tag=system.shop_point,distance=..8] run scoreboard players set @s player.actionbar.shop 5

schedule function system:shop_point/main 1t