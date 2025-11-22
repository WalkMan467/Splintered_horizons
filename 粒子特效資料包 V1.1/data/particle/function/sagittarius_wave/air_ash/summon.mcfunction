summon minecraft:item_display ~ ~-2 ~ {Tags:[fx.sw.aa,summon],start_interpolation:1,billboard: "center", brightness: {block: 5, sky: 5}, item: {components: {"minecraft:item_model": "minecraft:drop/broken_glass/0"}, count: 1, id: "minecraft:poisonous_potato"}}

spreadplayers ~ ~ 10 10 false @n[distance=..20,tag=fx.sw.aa,tag=summon,type=item_display]
tag @n[distance=..20,tag=fx.sw.aa,tag=summon,type=item_display] remove summon