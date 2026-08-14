# ===================================================
# 核心 main guide / core main guide

    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide
    ## Guide [ function weapons:type/sword/wind_sword/wind/main ] >>> 風力劍 wind 主迴圈 / wind sword wind loop
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/main ] >>> 天導神弓箭矢 主迴圈 / heavenly guiding arrow loop
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/main ] >>> 天導神弓箭矢 magic circle 主迴圈 / heavenly guiding arrow magic circle loop
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/main ] >>> 天導神弓箭矢 magic circle holy fire 主迴圈 / heavenly guiding arrow magic circle holy fire loop
    ## Guide [ function weapons:type/sword/otherworld_star/fallstar/main ] >>> 劍 異界晨星 fallstar 主迴圈 / sword otherworld star fallstar loop

# ===================================================

# Guide / 導向

# wind sword

execute \
    as @e[sort=arbitrary,tag=wind_sword.wind,limit=20,distance=0..,type=item_display] at @s run \
function weapons:type/sword/wind_sword/wind/main

# heavenly guiding arrow
execute \
    as @e[distance=..60,sort=arbitrary,tag=weapon.heavenly_guiding_bow.arrow,type=#arrows] at @s run \
function weapons:type/arrows/heavenly_guiding_arrow/main

execute \
    as @e[distance=..60,sort=arbitrary,tag=weapon.heavenly_guiding_bow.arrow.magic_circle,type=item_display] at @s run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/main

execute \
    as @e[sort=arbitrary,distance=..60,tag=weapon.heavenly_guiding_arrow.holy_fire.point,type=marker] at @s run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/main

execute \
    as @e[sort=arbitrary,tag=weapon.otherworld_star.fallstar.display,limit=10,distance=0..,type=block_display] at @s run \
function weapons:type/sword/otherworld_star/fallstar/main

# twilight wind

execute \
    as @e[sort=arbitrary,tag=twilight_wind.wind,limit=30,distance=0..,type=item_display] at @s run \
function weapons:type/sword/twilight_wind/wind/main

# thunder duet

function weapons:type/axe/thunder_duet/main

function weapons:type/axe/thunder_duet/player_main

# illusory claw
execute \
    as @e[distance=0..,tag=ench.phantom_fangs,type=!#dummy_mob] at @s run \
function energy_infusion_stone:skills/weapon/phantom_fangs/main

# nightfall

execute \
    as @e[sort=arbitrary,tag=weapon.nightfall.p,limit=20,distance=0..,type=marker] at @s run \
function weapons:type/sword/nightfall/passive/dmg/blade_main

# arrow ground detect

execute \
    as @e[sort=arbitrary,limit=20,tag=!ability.failure,predicate=weapons:type/arrows/ground_detect/main,distance=0..,type=#arrows] at @s run \
function weapons:type/arrows/ground_detect/run with entity @s item.components."minecraft:custom_data"

# grip of withering

execute \
    as @a at @s run \
function weapons:type/sword/grip_of_withering/main

# Throwable Item

execute \
    as @a at @s run \
function weapons:type/drop/miniature_sun/rc/main

execute \
    as @e[tag=weapon.zeuss_lightning.lightning,limit=10,distance=0..,type=item_display] at @s run \
function weapons:type/drop/zeuss_lightning/lightning/guide