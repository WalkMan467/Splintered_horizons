# ===================================================
# 裂境 生怪磚 取得物品 / unstable rift spawner get item

    ## Guide [ function unstable_rift:spawner/get ] >>> 裂境 生怪磚 取得物品 / unstable rift spawner get item
    ## Guide [ function unstable_rift:spawner/place ] >>> 裂境 生怪磚 放置並註冊 / unstable rift spawner place and register
    ## Guide [ function unstable_rift:spawner/main ] >>> 裂境 生怪磚 主程式 / unstable rift spawner main
    ## Guide [ function unstable_rift:spawner/setup/use ] >>> 裂境 生怪磚 召喚處理 / unstable rift spawner summon handler

# ===================================================

# 這是 spawner:get 的裂境專屬版本
# 差別在銀魚掛的是 unstable_rift.spawner.mob，只會被 unstable_rift:spawner/main 處理，
# 召喚走的是 unstable_rift:spawner/type/<mob>/summon，不會動到全域的 spawner 體系
#
# 注意兩件事（spawner:get 的舊寫法在 26.3 會壞，這裡修掉了）：
#   1. mob_spawner 的 7 個數值欄位 schema 都是 short，所以一律補 s 後綴，
#      傳進來的參數請給純整數（1 而不是 1s），不然會變成 1ss
#   2. 用 SpawnData 而不是 SpawnPotentials：SpawnPotentials 要等方塊 tick 過一輪
#      才會生出 SpawnData，在那之前方塊裡是空的
#
# 銀魚是刻意看不見的（隱身 + scale 拉到最小），所以生怪磚裡面「看起來空的」是正常的，
# 要確認資料有沒有進去請用 data get block <x> <y> <z>
#
# 用手放的生怪磚不會自動註冊重建點，放完要在那一格補跑
# function unstable_rift:spawner/respawn/register（預設 300s）
# 想一步到位就改用 function unstable_rift:spawner/place

$give @s spawner[item_name={"bold":true,"color":"dark_purple","fallback":"","italic":false,"translate":"$(ItemName)"},block_entity_data={id:"mob_spawner",Delay:0s,SpawnCount:$(SpawnCount)s,SpawnRange:$(SpawnRange)s,MaxNearbyEntities:$(MaxNearbyEntities)s,RequiredPlayerRange:$(RequiredPlayerRange)s,MinSpawnDelay:$(MinSpawnDelay)s,MaxSpawnDelay:$(MaxSpawnDelay)s,SpawnData:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:silverfish",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:0.1f,Tags:["unstable_rift.spawner.mob"],data:{mob:"$(mob)"},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:0.0625}]}}}] 1

    # Example:
# function unstable_rift:spawner/get {SpawnCount: 1, SpawnRange: 2, MaxNearbyEntities: 6, MinSpawnDelay: 400, MaxSpawnDelay: 800, RequiredPlayerRange: 16, ItemName: "monster.abyss_skeleton", mob: "chapter_1/abyss_skeleton"}