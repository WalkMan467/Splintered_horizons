## Add Nether decorators to the grave
execute store result score &rng mp.temp run random value -199..100
execute if score &rng mp.temp matches ..0 run return 0
execute if score &rng mp.temp matches ..20 run return run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"warped_fungus"},transformation:{translation:[0.1,0.125,-0.5],scale:[0.5,0.5,0.5],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score &rng mp.temp matches ..40 run return run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"crimson_fungus"},transformation:{translation:[-0.1,0.125,0],scale:[0.5,0.5,0.5],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score &rng mp.temp matches ..60 run return run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"nether_wart"},transformation:{translation:[-0.25,0.125,-0.45],scale:[0.9,0.9,0.9],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score &rng mp.temp matches ..70 run return run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"candle",Properties:{candles:"3"}},transformation:{translation:[-0.3,0.125,-0.125],scale:[0.75,0.75,0.75],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score &rng mp.temp matches ..80 run return run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"red_mushroom"},transformation:{translation:[-0.25,0.125,-0.25],scale:[0.75,0.75,0.75],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute if score &rng mp.temp matches ..90 run return run summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"brown_mushroom"},transformation:{translation:[0,0.125,-0.5],scale:[0.75,0.75,0.75],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"red_mushroom"},transformation:{translation:[-0.1,0.125,-0.75],scale:[0.75,0.75,0.75],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"brown_mushroom"},transformation:{translation:[0,0.125,-0.125],scale:[0.75,0.75,0.75],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
summon block_display ~ ~ ~ {Tags:["multipack.grave"],block_state:{Name:"brown_mushroom"},transformation:{translation:[-0.375,0.125,-0.5],scale:[0.75,0.75,0.75],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
