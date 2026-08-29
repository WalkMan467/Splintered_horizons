# data
function particle:create/macro/main with storage particle data.create[0]

# loop
data remove storage particle data.create[0]

execute \
    if data storage particle data.create[0] run \
function particle:create/loop