
execute \
    store result storage wma:data rdm_pos.x float 0.1 run \
random value -10..10

execute \
    store result storage wma:data rdm_pos.y float 0.1 run \
random value -10..10

execute \
    store result storage wma:data rdm_pos.z float 0.1 run \
random value -10..10

function sys:dmg_show/rdm_pos/run with storage wma:data rdm_pos