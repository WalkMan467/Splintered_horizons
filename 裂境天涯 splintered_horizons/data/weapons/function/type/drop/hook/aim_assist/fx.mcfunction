
execute at @e[type=#dummy_mob,tag=weapon.hook.target] run \
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[1.000,0.369,0.000]} ~ ~0.5 ~ 0.5 0.5 0.5 1 5 force @a[tag=weapon.hook.player]

execute at @e[type=#dummy_mob,tag=weapon.hook.target] run \
particle sonic_boom ~ ~0.5 ~ 0 0 0 1 5 force @a[tag=weapon.hook.player]

schedule function weapons:type/drop/hook/aim_assist/fx 0.5s