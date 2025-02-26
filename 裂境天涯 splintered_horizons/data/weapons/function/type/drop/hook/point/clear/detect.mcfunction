
# effect
execute if entity @p[tag=user,distance=..0.5] run return 1
execute if score #cancel weapon.hook.user.id matches 1 run return 1
execute unless entity @p[tag=user] run return 1

return fail