summon marker 762 107 642 {UUID:[I;3123231,3421234,-412313,41213],Tags:["summon","monster.segrina.1.rdm.point"]}

execute \
    store result entity 002fa81f-0034-3432-fff9-b5670000a0fd data.pos.x float 0.1 run \
random value -180..180

execute \
    store result entity 002fa81f-0034-3432-fff9-b5670000a0fd data.pos.z float 0.1 run \
random value -180..180

execute \
    if score #monster.segrina.1.ball.light global.main matches 1.. run \
function monsters:chapter_2/segrina/1/3 with entity 002fa81f-0034-3432-fff9-b5670000a0fd data.pos

execute \
    if score #monster.segrina.1.ball.dark global.main matches 1.. run \
function monsters:chapter_2/segrina/1/4 with entity 002fa81f-0034-3432-fff9-b5670000a0fd data.pos