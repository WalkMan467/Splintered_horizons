function monsters:chapter_2/elekiel/1/tree/use

execute \
    as @a[distance=..4] run \
damage @s 5 explosion by @n[distance=0..,tag=monsters.elekiel,type=skeleton]

kill @s