# ===================================================
# 鐮 終焉之墟 右鍵 summon chain / scythe ruins of the finality right click summon chain

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/chain/summon_chain ] >>> 鐮 終焉之墟 右鍵 summon chain / scythe ruins of the finality right click summon chain
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/chain/detect ] >>> 鐮 終焉之墟 右鍵 chain 偵測 / scythe ruins of the finality right click chain detect

# ===================================================

summon minecraft:item_display ~ ~ ~ {glow_color_override: 14811391,Glowing:1b,Tags:["weapon.ruins_of_the_finality.effect.chain","weapon.ruins_of_the_finality.effect.chain.spawn"],brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "minecraft:end_chain"}, count: 1, id: "minecraft:diamond"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999994f, 0.9999999f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    as @e[tag=weapon.ruins_of_the_finality.effect.chain.spawn] at @s run \
tp @s ^ ^ ^ facing entity @n[tag=weapon.ruins_of_the_finality.effect.chain.final.point,sort=furthest] eyes

scoreboard players set @e[tag=weapon.ruins_of_the_finality.effect.chain.spawn] duration 5

tag @e[tag=weapon.ruins_of_the_finality.effect.chain.spawn] remove weapon.ruins_of_the_finality.effect.chain.spawn