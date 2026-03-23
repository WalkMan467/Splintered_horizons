function monsters:chapter_2/blackhole_creeper/blackhole/range_2

execute \
    if score @s duration matches 10..21 \
    as @a[sort=arbitrary,distance=..6] run \
damage @s 1 monsters:chapter_2/blackhole_creeper/damage