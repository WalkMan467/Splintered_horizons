# ===================================================
# 武器分派 / weapon dispatch

    ## Guide [ function weapons:type ] >>> 武器分派 / weapon dispatch

# ===================================================


execute \
    on origin run \
scoreboard players reset @s drop
$execute \
    on origin at @s run \
function weapons:type/$(id)/use
kill @s