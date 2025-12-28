# 我不想直接抓 Player 的 Rotation 因為 Macro 會根據抓實體的 Data 來決定效能
# 所以直接用生成 AreaEffectCloud + /rotate 來抓位置(至少不會有太大的誤差)

## 引用優化後的 Player Rotation 數據請在 function 後面使用 { with entity @n[tag=player_data.rotation,type=marker] data.rotation }

summon marker ~ ~ ~ {Tags:["player_data","player_data.rotation"]}
rotate @n[tag=player_data.rotation,type=marker] facing entity @p eyes

# 我不知道為什麼加這行就能讓 Rotation 有正確的數值，然後拔掉會有誤差
rotate @n[tag=player_data.rotation,type=marker] ~ ~


execute \
    as @n[tag=player_data.rotation,type=marker] run \
data modify entity @s data.rotation.x set from entity @s Rotation[0]

execute \
    as @n[tag=player_data.rotation,type=marker] run \
data modify entity @s data.rotation.y set from entity @s Rotation[1]


execute \
    positioned ~ ~1.5 ~ run \
function players:screen_filters/glitch_effect/use with entity @n[tag=player_data.rotation,type=marker] data.rotation

kill @n[tag=player_data.rotation,type=marker]