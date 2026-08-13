item modify entity @a[tag=sys.zipline_platform.motion] weapon.mainhand {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/forward_motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] weapon.offhand {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/forward_motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] armor.head {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/forward_motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] armor.chest {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/forward_motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] armor.legs {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/forward_motion":0}}
item modify entity @a[tag=sys.zipline_platform.motion] armor.feet {type:"minecraft:set_enchantments",enchantments:{"sys:zipline_platform/forward_motion":0}}


execute \
    as @a[tag=sys.zipline_platform.motion] run \
clear @s poisonous_potato[custom_data~{motion_effect:1b}]

execute \
    as @a[tag=sys.zipline_platform.motion] run \
attribute @s minecraft:gravity modifier remove no_knockup

tag @a[tag=sys.zipline_platform.motion] remove sys.zipline_platform.motion