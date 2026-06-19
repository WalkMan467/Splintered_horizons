# ===================================================
# Camera Smooth Rotation with Sine Wave

    ## Guide [ function cutscene:world_tree/0/2 ] >>> Camera Smooth Rotation with Sine Wave

# ===================================================

# Camera Smooth Math(sin)
    # ar = Amplitude radius
    # R = Horizontal / Vertical Rotate
    # t = Time
    # s = Speed
# R + ( sin ( t * ar ) * s )

# 由於 scoreboard 會將 float 轉換為 int 整數， `cutscene.camera.snake.speed` 本質上是 100 倍精度 ( 如: 75 = 0.75 )

execute \
    unless entity 5e872217-eb7b-4a9f-92f4-db13079f9daa run \
return 0

scoreboard players add 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.timer 1
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.snake.amplitude 90
scoreboard players set 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.snake.speed 3

execute \
    store result score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.angle.x run \
data get entity 880ac6a7-143c-4e06-a68d-7eefae1c37a9 Rotation[0] 1

execute \
    store result score 5e872217-eb7b-4a9f-92f4-db13079f9daa cutscene.camera.angle.y run \
data get entity 880ac6a7-143c-4e06-a68d-7eefae1c37a9 Rotation[1] 1

function cutscene:world_tree/0/sine/2_rotate

# 計算 sin 波形偏移 (需配合 sin 查表或 macro 實現)
execute \
    as 880ac6a7-143c-4e06-a68d-7eefae1c37a9 at @s run \
function cutscene:world_tree/0/sine/3 with entity 5e872217-eb7b-4a9f-92f4-db13079f9daa data.cutscene.camera

schedule function cutscene:world_tree/0/sine/2 1t