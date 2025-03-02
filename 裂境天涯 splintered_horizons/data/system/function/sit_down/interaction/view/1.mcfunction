
summon text_display ~ ~-0.5 ~ {billboard:"vertical",teleport_duration:5,alignment:"center",Tags:["system.sit_down.text.spawn","system.sit_down","system.sit_down.text"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,0f,0.05f],scale:[2f,2f,2f]},text:'{"color":"white","font":"minecraft:icon","italic":false,"text":""}',background:16770019}
playsound minecraft:entity.goat.long_jump master @a ~ ~ ~ 0.5 0

tp @n[tag=system.sit_down.text.spawn] ~ ~0.5 ~
tag @n[tag=system.sit_down.text.spawn] remove system.sit_down.text.spawn

tag @s add active