
# info
function monsters:chapter_2/elekiel_phase_2/1/mysterray/info

# fx
playsound minecraft:entity.spider.step master @a ~ ~ ~ 0.3 1.5
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 0.1 0.6
playsound minecraft:block.note_block.hat voice @a ~ ~1 ~ 0.5 0.5
playsound minecraft:item.spyglass.use voice @a ~ ~1 ~ 1 0.5

# scoreboard players add #monster.elekiel_phase_2.1.ticking monster.elekiel_phase_2.cd 1

# execute \
#     if score #monster.elekiel_phase_2.1.ticking monster.elekiel_phase_2.cd matches 1 run \
#     return run \
# playsound minecraft:voice.elekiel_phase_2.1.clock_ticking_1 voice @a ~ ~1 ~ 0.5 1

# playsound minecraft:voice.elekiel_phase_2.1.clock_ticking_2 voice @a ~ ~1 ~ 0.5 1

# scoreboard players reset #monster.elekiel_phase_2.1.ticking monster.elekiel_phase_2.cd