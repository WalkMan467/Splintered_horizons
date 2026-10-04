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
# 用手放的生怪磚不會自動註冊重建點，放完要在那一格補跑
# function unstable_rift:spawner/respawn/register（預設 300s）
# 想一步到位就改用 function unstable_rift:spawner/place

$give @s spawner[item_name={"bold":true,"color":"dark_purple","fallback":"","italic":false,"translate":"$(ItemName)"},block_entity_data={id:"mob_spawner",SpawnCount:$(SpawnCount),SpawnRange:$(SpawnRange),MaxNearbyEntities:$(MaxNearbyEntities),RequiredPlayerRange:$(RequiredPlayerRange),Delay:0,MinSpawnDelay:$(MinSpawnDelay),MaxSpawnDelay:$(MaxSpawnDelay),SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:silverfish",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:0.1f,Tags:["unstable_rift.spawner.mob"],data:{mob:"$(mob)"},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:0.01}]}},weight:1}]}] 1

    # Example:
# function unstable_rift:spawner/get {SpawnCount: 1, SpawnRange: 2, MaxNearbyEntities: 6, MinSpawnDelay: 400, MaxSpawnDelay: 800, RequiredPlayerRange: 16, ItemName: "monster.abyss_skeleton", mob: "chapter_1/abyss_skeleton"}