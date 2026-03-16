item modify entity @a[tag=sys.zipline_platform.motion] weapon.mainhand {function:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] armor.head {function:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] armor.chest {function:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] armor.legs {function:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] armor.feet {function:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/motion":0}}


execute \
    as @a[tag=sys.zipline_platform.motion] run \
clear @s poisonous_potato[custom_data~{motion_effect:1b}]

execute \
    as @a[tag=sys.zipline_platform.motion] run \
attribute @s minecraft:gravity modifier remove no_knockup

tag @a[tag=sys.zipline_platform.motion] remove sys.zipline_platform.motion