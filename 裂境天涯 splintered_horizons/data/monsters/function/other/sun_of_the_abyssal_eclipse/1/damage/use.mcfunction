# ===================================================
# 暗蝕的烈陽 技能1 落點傷害 / sun of the abyssal eclipse skill 1 impact damage

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/damage/use ] >>> 暗蝕的烈陽 技能1 落點傷害 / sun of the abyssal eclipse skill 1 impact damage
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/main ] >>> 暗蝕的烈陽 技能1 分鏡 / sun of the abyssal eclipse skill 1 timeline
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/damage/fx ] >>> 暗蝕的烈陽 技能1 落點特效 / sun of the abyssal eclipse skill 1 impact fx
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/fire/use ] >>> 暗蝕的烈陽 技能1 點燃玩家 / sun of the abyssal eclipse skill 1 ignite

# ===================================================

execute \
    as @a[distance=..3] run \
damage @s 5 mob_attack by @n[distance=..6,type=husk,tag=monsters.sun_of_the_abyssal_eclipse]

execute \
    as @a[distance=..3] run \
function monsters:other/sun_of_the_abyssal_eclipse/1/fire/use

playsound minecraft:entity.generic.extinguish_fire voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 1

scoreboard players reset #monster.sun_of_the_abyssal_eclipse.1.damage.fx particle
function monsters:other/sun_of_the_abyssal_eclipse/1/damage/fx