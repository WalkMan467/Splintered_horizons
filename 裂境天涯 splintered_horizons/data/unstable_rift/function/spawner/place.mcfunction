# ===================================================
# 裂境 生怪磚 放置並註冊 / unstable rift spawner place and register

    ## Guide [ function unstable_rift:spawner/place ] >>> 裂境 生怪磚 放置並註冊 / unstable rift spawner place and register
    ## Guide [ function unstable_rift:spawner/get ] >>> 裂境 生怪磚 取得物品 / unstable rift spawner get item
    ## Guide [ function unstable_rift:spawner/respawn/register.guide ] >>> 裂境 生怪磚 註冊重建點 指定秒數 / register the rebuild point with a custom delay

# ===================================================

# 執行位置就是生怪磚要放的那一格，所以要配 execute positioned 用
# 放完方塊馬上註冊重建點，之後被破壞就會自己回來
#
# Delay 一律 0s：重建出來的生怪磚也是 0s，行為跟第一次放下來完全一樣


$setblock ~ ~ ~ minecraft:spawner{Delay:0s,SpawnCount:$(SpawnCount)s,SpawnRange:$(SpawnRange)s,MaxNearbyEntities:$(MaxNearbyEntities)s,RequiredPlayerRange:$(RequiredPlayerRange)s,MinSpawnDelay:$(MinSpawnDelay)s,MaxSpawnDelay:$(MaxSpawnDelay)s,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:silverfish",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:0.1f,Tags:["unstable_rift.spawner.mob"],data:{mob:"$(mob)"},active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:0.01}]}},weight:1}]}

$function unstable_rift:spawner/respawn/register.guide {seconds:$(seconds)}

    # Example:
# execute in minecraft:the_end positioned 10000 60 10000 run function unstable_rift:spawner/place {SpawnCount: 1, SpawnRange: 2, MaxNearbyEntities: 6, MinSpawnDelay: 400, MaxSpawnDelay: 800, RequiredPlayerRange: 16, mob: "chapter_1/abyss_skeleton", seconds: 300}
