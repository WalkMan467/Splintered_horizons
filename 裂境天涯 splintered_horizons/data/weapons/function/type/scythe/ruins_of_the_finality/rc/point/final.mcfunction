# ===================================================
# 鐮 終焉之墟 右鍵 定位點 final / scythe ruins of the finality right click point final

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/point/final ] >>> 鐮 終焉之墟 右鍵 定位點 final / scythe ruins of the finality right click point final
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/point/detect ] >>> 鐮 終焉之墟 右鍵 定位點 偵測 / scythe ruins of the finality right click point detect

# ===================================================

summon area_effect_cloud ^ ^ ^ {custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1,Tags:["weapon.ruins_of_the_finality.effect.chain.final.point"]}


function particle:space_crack/use

kill @e[tag=weapons.ruins_of_the_finality.adsorption.point]

scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 0