execute rotated ~ 0 in minecraft:overworld run summon item_display 753 146.5 995 {UUID:[I; 122314,4214421, 42142,421421],Tags:["item.tp_book.point","item.tp_book.safe_area.point"],Glowing:1b,billboard:"vertical",interpolation_duration:1,teleport_duration:1,glow_color_override:16711680,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:item_model":"minecraft:eye_of_the_end"}}}

particle minecraft:totem_of_undying 753 147 995 0 0 0 0.25 20 force @a
playsound minecraft:entity.ender_eye.death voice @a 753 147 995 1 0.5
playsound minecraft:entity.firework_rocket.twinkle voice @a 753 147 995 1 1
particle minecraft:sonic_boom 753 147 995 0 0 0 0 1 force @a

schedule function item:type/tp_book/main 1t