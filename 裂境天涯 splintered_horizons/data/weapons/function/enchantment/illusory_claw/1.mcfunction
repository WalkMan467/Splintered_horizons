
# self
damage @s 2 weapons:enchantment/illusory_claw
data modify entity @s Motion set value [0d,0.3d,0d]

# particle
particle minecraft:sweep_attack ~ ~ ~
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.5