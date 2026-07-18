execute \
    unless entity @s[type=#arrows] run \
return 0

# 0a437e3f-f5e2-44aa-b56d-9ca8f39ebfb2
summon marker ~ ~ ~ {UUID:[I;172195391,-169720662,-1251107672,-207700046]}

$execute \
    as 0a437e3f-f5e2-44aa-b56d-9ca8f39ebfb2 \
    positioned 0.0 0.0 0.0 run \
tp @s ^ ^ ^$(speed)

data modify entity @s Motion set from entity 0a437e3f-f5e2-44aa-b56d-9ca8f39ebfb2 Pos
kill 0a437e3f-f5e2-44aa-b56d-9ca8f39ebfb2