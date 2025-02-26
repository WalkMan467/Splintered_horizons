
# effect
tp @s ^ ^0.1 ^1
attribute @s gravity modifier add weapons.hook.player -1 add_multiplied_total

    # 取消鉤子技能
execute at @s unless block ^ ^ ^1 #air run scoreboard players set #cancel weapon.hook.user.id 1
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_sneaking":true}}} run scoreboard players set #cancel weapon.hook.user.id 1