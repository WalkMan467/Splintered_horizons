tag @s add story.text_bubbles.actived

execute if entity @s[tag=story.text_bubbles.size.1] run data merge entity @s {interpolation_duration:10,transformation: {scale: [1.0f, 1.0f, 1.0f]}}
execute if entity @s[tag=story.text_bubbles.size.2] run data merge entity @s {interpolation_duration:10,transformation: {scale: [2.0f, 2.0f, 2.0f]}}
execute if entity @s[tag=story.text_bubbles.size.3] run data merge entity @s {interpolation_duration:10,transformation: {scale: [5.0f, 5.0f, 5.0f]}}