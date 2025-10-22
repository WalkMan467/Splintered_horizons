# Guide / 導向

# wind sword

execute as @s[type=item_display,tag=wind_sword.wind] at @s run function weapons:type/sword/wind_sword/wind/main

# twilight wind

execute as @s[type=item_display,tag=twilight_wind.wind] at @s run function weapons:type/sword/twilight_wind/wind/main

execute as @s[type=marker,tag=weapon.nightfall.p] at @s run function weapons:type/sword/nightfall/passive/dmg/blade_main

execute as @s[type=marker,tag=weapon.ruins_of_the_finality.blade.1] at @s run function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/main

function weapons:type/arrows/ground_detect/main
function weapons:type/sword/grip_of_withering/main
function weapons:type/drop/miniature_sun/rc/main
function weapons:type/drop/zeuss_lightning/lightning/main