# ===================================================
# 裂境 生怪磚 建立重建點 / create the rebuild point marker

    ## Guide [ function unstable_rift:spawner/respawn/register.point ] >>> 裂境 生怪磚 建立重建點 / create the rebuild point marker
    ## Guide [ function unstable_rift:spawner/respawn/register.guide ] >>> 裂境 生怪磚 註冊重建點 指定秒數 / register the rebuild point with a custom delay
    ## Guide [ function unstable_rift:spawner/respawn/snapshot ] >>> 裂境 生怪磚 存檔 / unstable rift spawner snapshot

# ===================================================

# 執行位置是生怪磚那一格的正中心
# data.respawn 是重建要等的秒數，之後倒數就是讀這個值


$summon marker ~ ~ ~ {Tags:["unstable_rift.spawner.point","unstable_rift.spawner.new"],data:{respawn:$(seconds)}}

# 同一格的舊重建點清掉，重複跑註冊不會留下兩個 marker

kill @e[tag=unstable_rift.spawner.point,tag=!unstable_rift.spawner.new,distance=..0.5,sort=arbitrary,type=marker]

# 註冊當下先存一份，之後每秒會再更新

execute \
    as @n[tag=unstable_rift.spawner.new,distance=..0.5,sort=arbitrary,type=marker] at @s run \
function unstable_rift:spawner/respawn/snapshot

tag @e[tag=unstable_rift.spawner.new,distance=..0.5,sort=arbitrary,type=marker] remove unstable_rift.spawner.new
