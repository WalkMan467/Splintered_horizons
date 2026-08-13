

execute \
    positioned ~-4.0 ~-100 ~-4.0 \
    if entity @e[tag=temp,dx=7,dy=200,dz=7,limit=1,type=item_display] run \
return 1
return fail