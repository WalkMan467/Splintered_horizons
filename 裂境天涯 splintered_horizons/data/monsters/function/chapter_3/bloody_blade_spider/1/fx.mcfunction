scoreboard players add #monster.bloody_blade_spider.fx particle 3

particle dust_color_transition{from_color: [1.0f, 0.0f, 0.0f], scale: 1.5f, to_color: [0.75f, 0.75f, 0.75f]} ^ ^ ^6 0 0 0 0 0 force @a


execute rotated ~3 0 \
    if score #monster.bloody_blade_spider.fx particle matches ..360 run \
function monsters:chapter_3/bloody_blade_spider/1/fx