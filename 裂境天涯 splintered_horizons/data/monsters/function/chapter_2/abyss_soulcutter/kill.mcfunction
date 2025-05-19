scoreboard players set abyss_soulcutter monster.boss.spawn 0

summon item ~ ~0.5 ~ {Glowing:1b,Motion:[0.0f,0.25f,0.0f],Item:{id:"minecraft:stone_sword",count:1,components:{"minecraft:item_name":{"bold":true,"color":"#00DD00","italic":false,"translate":"weapon.silvaverdis"},"minecraft:lore":[{"color":"dark_gray","italic":false,"translate":"weapon.silvaverdis.type"},{"color":"blue","italic":false,"translate":"weapon.silvaverdis.story.1"},{"color":"blue","italic":false,"translate":"weapon.silvaverdis.story.2"}],"minecraft:attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:6,operation:"add_value",slot:"mainhand"},{id:"base_attack_speed",type:"attack_speed",amount:-2.3,operation:"add_value",slot:"mainhand"}],"minecraft:max_stack_size":1,"minecraft:unbreakable":{},"minecraft:item_model":"sword/silvaverdis/1","minecraft:custom_data":{rc:1b,type:"sword",weapon:"silvaverdis",monument:2b}}}}

summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["monster.death_particle.1","summon"],Particle:{type:"block",block_state:"air"},Radius:0}

setblock 1721 103 882 end_gateway{ExactTeleport:1b,exit_portal:[I;760,146,983]} replace

bossbar remove minecraft:monster.boss.abyss_soulcutter

function animated_java:boss_1/remove/all