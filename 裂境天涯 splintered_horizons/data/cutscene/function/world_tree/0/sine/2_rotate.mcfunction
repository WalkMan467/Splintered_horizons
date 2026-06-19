# ===================================================
# Camera Smooth Rotation Macro Calculate

    ## Guide [ function cutscene:world_tree/0/2_rotate ] >>> Camera Smooth Rotation Macro Calculate
    ## Guide [ function cutscene:world_tree/0/2 ] >>> Camera Smooth Rotation with Sine Wave

# ===================================================

# 計算 sin 波形角度偏移
# 公式: offset = sin(timer * 360 / amplitude) * speed

# sin
scoreboard players set #math global.main 360

# 計算當前的弧度位置 (0-359)
scoreboard players operation 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree = 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.timer
scoreboard players operation 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree *= #math global.main
scoreboard players operation 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree /= 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.snake.amplitude

# 根據角度查表計算 sin 值
execute \
    if score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree matches 0..44 run \
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset 38

execute \
    if score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree matches 45..89 run \
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset 71

execute \
    if score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree matches 90..134 run \
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset 92

execute \
    if score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree matches 135..179 run \
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset 100

execute \
    if score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree matches 180..224 run \
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset 92

execute \
    if score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree matches 225..269 run \
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset 71

execute \
    if score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree matches 270..314 run \
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset 38

execute \
    if score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.degree matches 315..359 run \
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset 0

# 計算最終偏移 = sin 值 * speed

scoreboard players operation 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.final = 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.offset
scoreboard players operation 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.final *= 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.snake.speed

execute \
    store result entity 5e872217-eb7b-4a9f-92f4-db13079f9daa data.cutscene.camera.rotate float 0.01 run \
scoreboard players get 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.sine.final