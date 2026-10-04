function particle:create/radial_exoansion/duration


rotate @s facing entity @n[sort=arbitrary,distance=..2,tag=temp,tag=particle.radial_exoansion.main,type=marker]

execute \
    on passengers run \
rotate @s facing entity @n[sort=arbitrary,distance=..2,tag=temp,tag=particle.radial_exoansion.main,type=marker]

tag @s remove summon

schedule function particle:create/radial_exoansion/main 1t