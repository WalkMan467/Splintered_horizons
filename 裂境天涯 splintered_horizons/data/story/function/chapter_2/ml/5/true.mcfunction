execute \
    if score #story.chapter_2.ml.5 global.main matches 1 \
    if score #story.chapter_2.ml.5_temp global.main matches 1 run \
return 0

scoreboard players set #story.chapter_2.ml.5_temp global.main 1
scoreboard players set story.chapter_2.ml.5 story.chapter_2 1

execute positioned 1112 82 375 rotated 95 0 run \
summon mannequin ~ ~ ~ \
    { \
        UUID:[I; 521241, 4214124, 414241, 52314], \
        Silent: 1b, \
        Team:"NocollisionRule", \
        immovable:true, \
        hide_description:false, \
        profile: \
            { \
                texture:"entity/player/slim/melisna" \
            } \
    }

execute positioned 1112 82 375 unless score #story:icon/story/chapter_2/mq/scebe_5 global.main matches 1 \
as @n[sort=arbitrary,distance=..1,tag=world_area.main.safe_zone.melisna,type=mannequin] on passengers run data modify entity @s Glowing set value 1b

summon interaction 1112 82 375 \
    { \
        Tags:["story.chapter_2.ml.5.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 21241, 42112241, 42121, 523122] \
    }