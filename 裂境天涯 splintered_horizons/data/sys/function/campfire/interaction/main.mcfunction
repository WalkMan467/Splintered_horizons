## The campfire area is shown here [ function world_area:main/loop ]
execute if data entity @s interaction.timestamp run function sys:campfire/interaction/run

execute positioned ~ ~1 ~2 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~1 ~1 ~2 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~-1 ~1 ~2 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn

execute positioned ~ ~1 ~-2 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~1 ~1 ~-2 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~-1 ~1 ~-2 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn

execute positioned ~2 ~1 ~ if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~2 ~1 ~1 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~2 ~1 ~-1 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn

execute positioned ~-2 ~1 ~ if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~-2 ~1 ~1 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~-2 ~1 ~-1 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn


execute positioned ~ ~1 ~3 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~1 ~1 ~3 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~-1 ~1 ~3 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn

execute positioned ~ ~1 ~-3 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~1 ~1 ~-3 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~-1 ~1 ~-3 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn

execute positioned ~3 ~1 ~ if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~3 ~1 ~1 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~3 ~1 ~-1 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn

execute positioned ~-3 ~1 ~ if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~-3 ~1 ~1 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn
execute positioned ~-3 ~1 ~-1 if block ~ ~ ~ #campfires[lit=false] unless entity @n[sort=arbitrary,distance=..1,tag=sys.sit_down.act,type=interaction] run function sys:sit_down/spawn