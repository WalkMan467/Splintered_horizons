# ===================================================
# 生怪磚 取得物品 / spawner get item

    ## Guide [ function spawner:get ] >>> 生怪磚 取得物品 / spawner get item
    ## Guide [ function spawner:main ] >>> 生怪磚 主程式 / spawner main
    ## Guide [ function spawner:setup/use ] >>> 生怪磚 召喚處理 / spawner summon handler

# ===================================================

# mob_spawner 的 7 個數值欄位 (Delay / SpawnCount / SpawnRange / MaxNearbyEntities /
# RequiredPlayerRange / MinSpawnDelay / MaxSpawnDelay) schema 都是 short，所以一律補 s 後綴，
# 傳進來的參數請給純整數（1 而不是 1s），不然會變成 1ss
#
# 用 SpawnData 而不是 SpawnPotentials：SpawnPotentials 要等方塊 tick 過一輪才會生出
# SpawnData，在那之前方塊裡是空的（只有一個 weight:1 的項目，兩種寫法的生怪結果一樣）
#
# 銀魚是刻意看不見的（隱身 + scale 拉到最小），所以生怪磚裡面「看起來空的」是正常的，
# 要確認資料有沒有進去請用 data get block <x> <y> <z>


$give @s spawner[item_name={"bold":true,"color":"dark_red","fallback":"","italic":false,"translate":"$(ItemName)"},block_entity_data={id:"mob_spawner",SpawnCount:$(SpawnCount)s,SpawnRange:$(SpawnRange)s,MaxNearbyEntities:$(MaxNearbyEntities)s,RequiredPlayerRange:$(RequiredPlayerRange)s,Delay:0s,MinSpawnDelay:$(MinSpawnDelay)s,MaxSpawnDelay:$(MaxSpawnDelay)s,SpawnData:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:silverfish",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:0.1f,Tags:["sys.spawner.mob"],data:{mob:"$(mob)"},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:0.01}]}}}] 1
    # Example:
# function spawner:get {SpawnCount: 1, SpawnRange: 2, MaxNearbyEntities: 6, MinSpawnDelay: 400, MaxSpawnDelay: 800, RequiredPlayerRange: 16, ItemName: "monster.blackhole_creeper", mob: "chapter_2/blackhole_creeper"}