# ===================================================
# 災厄之主 強制移除 / lord of the cataclysm force remove

    ## Guide [ function monsters:chapter_3/lord_of_the_cataclysm/void ] >>> 災厄之主 強制移除 / lord of the cataclysm force remove
    ## Guide [ function trap:chapter_3/chest/1/false ] >>> false
    ## Guide [ function trap:chapter_3/chest/1/reset ] >>> reset

# ===================================================

tp @e[tag=monsters.lord_of_the_cataclysm,type=zombie] ~ -255 ~
kill @e[tag=monsters.lord_of_the_cataclysm,type=zombie]
effect clear @a[distance=..60] night_vision

bossbar remove minecraft:monsters.lord_of_the_cataclysm

schedule clear monsters:chapter_3/lord_of_the_cataclysm/main

advancement grant @a only music:chapter_3/lord_of_the_cataclysm/reset