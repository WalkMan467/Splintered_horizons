execute if entity @s[tag=player.tp_book.disabled] run tellraw @s {"translate":"item.type.tp_book.disabled","color":"red","fallback": "傳送書被禁用，無法使用傳送書"}
execute if entity @s[tag=player.tp_book.disabled] run return 0

execute in minecraft:overworld run tp @s 805 201 141 0 0