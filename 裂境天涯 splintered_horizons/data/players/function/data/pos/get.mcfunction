# 我不想直接抓 Player 的 pos 因為 Macro 會根據抓實體的 Data 來決定效能
# 所以直接用生成 AreaEffectCloud + /rotate 來抓位置(至少不會有太大的誤差)

## 引用優化後的 Player pos 數據請在 function 後面使用 { with entity @n[tag=player_data.pos,type=marker] data.pos }

summon marker ~ ~ ~ {Tags:["player_data","player_data.pos"]}

execute as @n[tag=player_data.pos,type=marker] run data modify entity @s data.pos.x set from entity @s Pos[0]
execute as @n[tag=player_data.pos,type=marker] run data modify entity @s data.pos.y set from entity @s Pos[1]

# execute positioned ~ ~1.5 ~ run function <function> with entity @n[tag=player_data.pos,type=marker] data.pos

kill @n[tag=player_data.pos,type=marker]