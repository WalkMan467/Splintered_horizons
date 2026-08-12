execute \
    store result storage temp temp.rotate int 1 run \
random value -180..180

function weapons:type/sword/aquilumera/switch/water/fx/mirror/summon with storage temp temp

data remove storage temp temp

say ok