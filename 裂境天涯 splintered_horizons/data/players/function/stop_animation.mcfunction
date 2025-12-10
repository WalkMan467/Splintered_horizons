execute if entity @s[tag=armor.black_hole.animation.boots.player] run function armors:type/black_hole/animation/boots/stop
execute if entity @s[tag=weapon.earthquake_axe.user] run function weapons:type/axe/earthquake_axe/animation/stop

tag @s remove animation
tag @s remove forced_interrupt_animation