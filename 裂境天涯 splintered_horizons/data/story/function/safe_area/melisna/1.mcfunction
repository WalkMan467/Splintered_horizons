# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 1 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.1","fallback": "［？？？］你好，初次見面，我的名字是梅倫絲娜"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 2 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.2","fallback": "［梅倫絲娜］旁邊這位是我的哥哥伊索克拉"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 3 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.3","fallback": "［伊索克拉］你好"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 4 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.4","fallback": "［你］你們好"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 5 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.5","fallback": "［梅倫絲娜］那個...就是關於剛剛哥哥的一些小誤會"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 6 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.6","fallback": "［梅倫絲娜］我向二位道個歉"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 7 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.7","fallback": "［伊索克拉］你不必道歉梅倫絲娜"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 8 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.8","fallback": "［伊索克拉］即使萊卡願意讓他們留下來"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 9 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.9","fallback": "［伊索克拉］但我始終堅信他們兩個是深淵的爪牙"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 10 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.10","fallback": "［梅倫絲娜］哥哥！"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 11 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.11","fallback": "［伊索克拉］不要叫我，梅倫絲娜"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 12 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.12","fallback": "［伊索克拉］難道你忘了嗎? 忘了我們的過往"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 13 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.13","fallback": "［梅倫絲娜］哥哥..."}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 14 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.14","fallback": "(伊索克拉默默的離開了)","color":"red"}

execute \
    positioned 773 146 989 \
    if score story.safe_area.melisna.1 story.safe_area matches 14 \
    as @n[tag=aj.isokla.root,type=item_display,distance=..1] run \
function animated_java:isokla/remove/this

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 15 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.15","fallback": "(梅倫絲娜深深地嘆一口氣)"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 16 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.16","fallback": "［你］沒事的，我能理解"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 17 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.17","fallback": "［梅倫絲娜］但願這個世界不再有深淵就好"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 18 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.18","fallback": "［梅倫絲娜］我只想，默默守護者哥哥"}

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 19 run \
tellraw @a[distance=..16] {"translate": "story.safe_area.melisna.1.19","fallback": "［梅倫絲娜］即便他如此暴躁..."}


execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 19 run \
tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]

execute \
    positioned 774 146 987 \
    if score story.safe_area.melisna.1 story.safe_area matches 19 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    positioned 774.00 146.00 989.00 rotated 100 0 \
    if score story.safe_area.melisna.1 story.safe_area matches 20 \
    unless entity @n[tag=aj.isokla.root,type=item_display,distance=..1] run \
function animated_java:isokla/summon {args: {animation: 'idle', start_animation: true}}

execute \
    positioned 774.00 146.00 989.00 \
    if score story.safe_area.melisna.1 story.safe_area matches 20 run \
tag @n[tag=aj.isokla.root,distance=..1,type=item_display] add world_area.main.safe_zone.isokla


execute \
    if score story.safe_area.melisna.1 story.safe_area matches 20 run \
schedule function story:safe_area/melisna/0 1t

data remove entity @s interaction


execute \
    unless score story.safe_area.melisna.1 story.safe_area matches 1..20 run \
return 0

scoreboard players add story.safe_area.melisna.1 story.safe_area 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1