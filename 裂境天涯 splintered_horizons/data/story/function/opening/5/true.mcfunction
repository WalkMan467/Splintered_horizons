scoreboard players set #story.opening.5_temp global.main 1
scoreboard players set story.opening.5 story.chapter_1 1


execute \
    positioned 1577 60 130 \
    as @n[sort=arbitrary,distance=..3,tag=aj.sophia.root,type=item_display] at @s run \
function aj:sophia/remove/this

execute \
    positioned 1577 60 130 rotated 15 0 run \
function aj:sophia/summon \
    { \
        args:\
        { \
            animation: 'idle', \
            start_animation: true \
        } \
    }

execute \
    positioned 1577 60 130 \
    unless score #story.opening.1.glow global.main matches 1 \
    as @n[sort=arbitrary,tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

# 955fb949-151d-48af-8ecf-e50c4b6a49f8
summon interaction 1577 60 130 \
    { \
        Tags:["story.opening.5.act","interaction.sound.default"], \
        height:2, \
        UUID:[I;-1788888759,354240687,-1898978036,1265256952] \
    }