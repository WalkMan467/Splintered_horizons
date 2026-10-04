# ===================================================
# 裂境 生怪磚 註冊重建點 指定秒數 / register the rebuild point with a custom delay

    ## Guide [ function unstable_rift:spawner/respawn/register.guide ] >>> 裂境 生怪磚 註冊重建點 指定秒數 / register the rebuild point with a custom delay
    ## Guide [ function unstable_rift:spawner/respawn/register ] >>> 裂境 生怪磚 註冊重建點（預設 300s）/ register the rebuild point (default 300s)
    ## Guide [ function unstable_rift:spawner/respawn/register.point ] >>> 裂境 生怪磚 建立重建點 / create the rebuild point marker

# ===================================================

# 這一格不是生怪磚就不註冊，免得存下一份空資料


execute \
    unless block ~ ~ ~ minecraft:spawner run \
return 0

# marker 固定生在方塊正中心，後面 at @s 的方塊判定才會剛好對準同一格

$execute align xyz positioned ~0.5 ~0.5 ~0.5 run function unstable_rift:spawner/respawn/register.point {seconds:$(seconds)}

    # Example:
# execute in minecraft:the_end positioned 10000 60 10000 run function unstable_rift:spawner/respawn/register.guide {seconds:120}
