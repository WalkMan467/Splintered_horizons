# Guide / 導向

# wind sword

execute \
    as @e[sort=arbitrary,tag=wind_sword.wind,limit=20,distance=0..,type=item_display] at @s run \
function weapons:type/sword/wind_sword/wind/main

execute \
    as @e[sort=arbitrary,tag=weapon.otherworld_star.fallstar.display,limit=10,distance=0..,type=block_display] at @s run \
function weapons:type/sword/otherworld_star/fallstar/main

# twilight wind

execute \
    as @e[sort=arbitrary,tag=twilight_wind.wind,limit=30,distance=0..,type=item_display] at @s run \
function weapons:type/sword/twilight_wind/wind/main

# thunder duet

function weapons:type/axe/thunder_duet/main

execute \
    as @a at @s run \
function weapons:type/axe/thunder_duet/player_main

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
    as @a run \
function weapons:type/sword/grip_of_withering/main

# Throwable Item

execute \
    as @a run \
function weapons:type/drop/miniature_sun/rc/main

execute \
    as @e[tag=weapon.zeuss_lightning.lightning,limit=10,distance=0..,type=item_display] at @s run \
function weapons:type/drop/zeuss_lightning/lightning/guide