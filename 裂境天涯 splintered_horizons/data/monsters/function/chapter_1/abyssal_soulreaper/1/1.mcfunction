# ===================================================
# 深淵斷魂者 技能1 揮斬 / abyssal soulreaper skill 1 swing

    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/1 ] >>> 深淵斷魂者 技能1 揮斬 / abyssal soulreaper skill 1 swing
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/main ] >>> 深淵斷魂者 技能1 分鏡 / abyssal soulreaper skill 1 timeline
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/4 ] >>> 深淵斷魂者 技能1 斧頭展示設定 / abyssal soulreaper skill 1 axe display setup
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/fx ] >>> 深淵斷魂者 技能1 環狀特效 / abyssal soulreaper skill 1 ring fx
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/effect/bleeding/use ] >>> 深淵斷魂者 流血 施加 / abyssal soulreaper bleeding apply

# ===================================================

# 特效
execute \
    rotated ~ 0 run \
function monsters:chapter_1/abyssal_soulreaper/1/fx

# 音效
playsound minecraft:block.trial_spawner.ominous_activate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.note_block.basedrum voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~1 ~ 1 0.75

# 斧頭物品展示
summon minecraft:item_display ~ ~1 ~ {Tags:["monster.abyssal_soulreaper.1.display","summon"],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:halberd/iron_halberd/1"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 1, transformation: {left_rotation: [-0.65328145f, -0.2705981f, -0.2705981f, 0.65328145f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0000024f, 5.0000014f, 0.9999995f], translation: [0.0f, -1.0f, -2.5f]}}

ride @n[sort=arbitrary,distance=..1.5,tag=monster.abyssal_soulreaper.1.display,tag=summon,type=item_display] mount @s

execute \
    on passengers \
    as @s[tag=monster.abyssal_soulreaper.1.display,tag=summon,type=item_display] run \
function monsters:chapter_1/abyssal_soulreaper/1/4

# 掛流血效果
execute \
    as @a[distance=..8] run \
function monsters:chapter_1/abyssal_soulreaper/effect/bleeding/use