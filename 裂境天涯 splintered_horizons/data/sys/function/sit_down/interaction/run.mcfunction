tag @s add ride

kill @e[tag=sys.sit_down.text,distance=..5,type=text_display]


execute on target run \
ride @s mount @n[tag=ride,type=interaction]

tag @s[tag=ride] remove ride

data remove entity @s interaction
