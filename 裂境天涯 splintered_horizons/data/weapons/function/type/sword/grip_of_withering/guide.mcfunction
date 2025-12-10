advancement grant @s only weapons:type/sword/grip_of_withering/1

execute unless items entity @s weapon.mainhand *[custom_data~{weapon:"grip_of_withering"}] run return 0
scoreboard players set @s weapon.grip_of_withering.effect 200

particle minecraft:sculk_soul ~ ~0.5 ~ 1.5 0 1.5 0.01 40
playsound minecraft:entity.wither.ambient voice @a ~ ~1 ~ 0.5 1

scoreboard players set @s weapon.effect.shadow 200

scoreboard players set @s weapon.grip_of_withering.effect.state 1

advancement revoke @s only weapons:type/sword/grip_of_withering/1
advancement grant @s only weapons:type/sword/grip_of_withering/1