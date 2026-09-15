# 展開推進 - 依照 summon 時給的 physics 決定走哪一套
# 有開物理的灰燼在 summon 時會多帶 particle.radial_exoansion.physics 這個 tag

execute \
    if entity @s[tag=particle.radial_exoansion.physics] run \
    return run \
function particle:create/radial_exoansion/guide/physics

function particle:create/radial_exoansion/guide/static
