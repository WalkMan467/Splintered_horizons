# 執行者 : 怪物
$execute \
    as @e[tag=dmger,distance=0..,type=!#dummy_mob] run \
damage @s $(values) weapons:type/arrow/damage_resonance_arrow/dmg by @e[tag=atker,limit=1,distance=0..,type=!#dummy_mob]