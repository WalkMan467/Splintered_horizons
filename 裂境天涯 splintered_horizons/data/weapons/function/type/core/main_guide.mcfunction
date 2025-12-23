# Guide / 導向

# wind sword
execute as @e[sort=arbitrary,tag=wind_sword.wind,type=item_display,limit=20] at @s run function weapons:type/sword/wind_sword/wind/main
execute as @e[sort=arbitrary,tag=weapon.otherworld_star.fallstar.display,type=block_display,limit=10] at @s run function weapons:type/sword/otherworld_star/fallstar/main

# twilight wind
execute as @e[sort=arbitrary,tag=twilight_wind.wind,type=item_display,limit=30] at @s run function weapons:type/sword/twilight_wind/wind/main

# nightfall
execute as @e[sort=arbitrary,tag=weapon.nightfall.p,type=marker,limit=20] at @s run function weapons:type/sword/nightfall/passive/dmg/blade_main

# arrow ground detect
execute \
    as @e[type=arrow,tag=!ability.failure,predicate=weapons:type/arrows/ground_detect/main,limit=20] at @s run \
function weapons:type/arrows/ground_detect/run with entity @s item.components."minecraft:custom_data"

# grip of withering
execute as @a run function weapons:type/sword/grip_of_withering/main

# Throwable Item
execute as @a run function weapons:type/drop/miniature_sun/rc/main
execute as @e[type=item_display,tag=weapon.zeuss_lightning.lightning,limit=10] at @s run function weapons:type/drop/zeuss_lightning/lightning/guide