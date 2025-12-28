scoreboard players set #story.chapter_1.opening.1_temp global.main 1
scoreboard players set story.chapter_1.mq.1 story.chapter_1 1


kill @e[tag=story.chapter_1.opening.1]


execute \
    as @n[tag=aj.sophia.root,limit=1] run \
function animated_java:sophia/remove/this



execute \
    positioned 38 63.75 6.85 rotated 0 0 run \
function animated_java:sophia/summon \
    { \
        args:\
        { \
            animation: 'sit_down', \
            start_animation: true \
        } \
    }



execute \
    positioned 38 64.15 6.85 \
    unless score #story:icon/story/chapter_1/mq/scebe_1 global.main matches 1 \
as @n[type=item_display,tag=aj.sophia.root,distance=..3] on passengers run \
data modify entity @s Glowing set value 1b

summon interaction 38 64.15 6.85 \
    { \
        Tags:["story.chapter_1.opening.1.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 1, 21, 51, 5] \
    }

summon minecraft:item_display 37.75 64.625 6.9375 \
    { \
        Tags:["story.chapter_1.opening.1"], \
        brightness: {block: 15, sky: 15}, \
        item: {count: 1, id: "minecraft:iron_sword"}, \
        transformation: \
        { \
            left_rotation: [-0.13016956f, 0.19191396f, 0.82340604f, 0.5179068f], \
            right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
            scale: [1.0000002f, 1.0000005f, 1.0000014f], \
            translation: [0.0f, 0.0f, 0.0f] \
        } \
    }