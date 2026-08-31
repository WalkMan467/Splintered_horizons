# ===================================================
# 追魂體 命中玩家 / ghost key hit player

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/on_hit_player ] >>> 追魂體 命中玩家 / ghost key hit player
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/guide ] >>> 追魂體 追蹤與判定 / ghost key track and check
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/remove/1 ] >>> 追魂體 移除 特效 / ghost key remove fx

# ===================================================

execute \
    as @p[distance=..1.5,tag=temp] at @s run \
function cse:status_effects/apply/soul_restraint/use {duration:100, value:0, max: 4}

execute \
    as @p[distance=..1.5,tag=temp] at @s run \
damage @s 5 monsters:chapter_2/soul_sharpshooter/ghost/dmg by @n[sort=arbitrary,tag=monsters.soul_sharpshooter,distance=..20,type=stray]

execute \
    as @p[distance=..1.5,tag=temp] at @s run \
scoreboard players set @s player.disable.tp_book 100

execute \
    as @p[distance=..1.5,tag=temp] at @s run \
scoreboard players set @s player.disable.elytra_switch 100

advancement grant @p[distance=..1.5,tag=temp] only players:icon/status_effects/soul_restraint

function monsters:chapter_2/soul_sharpshooter/2/key/remove/1