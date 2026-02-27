execute \
    unless items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:"flame_of_finality"}] run \
return run \
attribute @s attack_damage modifier remove weapon.flame_of_finality

scoreboard players set @s player.actionbar.eye_of_finality 2
attribute @s attack_damage modifier add weapon.flame_of_finality -1 add_multiplied_base