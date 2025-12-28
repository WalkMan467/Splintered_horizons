scoreboard players add #monsters.chapter_2.elekiel.1.fx particle 3

particle dust_color_transition{from_color: [0.0f, 0.75f, 0.75f], scale: 1.5f, to_color: [0.0f, 0.75f, 1.0f]} ^ ^1 ^4 0 0 0 0 0 force @a


execute \
    positioned ~ ~0.05 ~ rotated ~3 ~ \
    if score #monsters.chapter_2.elekiel.1.fx particle matches ..90 run \
function monsters:chapter_2/elekiel/1/fx/range