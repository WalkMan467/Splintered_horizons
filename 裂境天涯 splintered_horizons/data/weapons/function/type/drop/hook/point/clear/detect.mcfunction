
# effect

execute \
    if entity @n[type=marker,tag=owner,distance=..0.5] run \
return 1

execute at @s \
    unless block ^ ^ ^0.5 #penetrate run \
return 1

execute \
    on passengers \
    unless entity @s[tag=user] run \
return 1

execute \
    unless entity @p[tag=user] run \
return 1

return fail