playsound minecraft:item.trident.throw voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.creaking.activate voice @a ~ ~1 ~ 1 2
playsound minecraft:entity.player.attack.crit voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.player.attack.crit voice @a ~ ~1 ~ 1 0.75

function cse:sys/status_effects/use {attribute:"attack_damage",duration:100,base:0.3,value:0.3,max:1.5, id:"energy_infusion_stone.executioner.skills.attack_damage",type:"add_multiplied_base"}
function cse:sys/status_effects/use {attribute:"attack_speed",duration:100,base:0.1,value:0.1,max:0.5, id:"energy_infusion_stone.executioner.skills.attack_speed",type:"add_multiplied_base"}
function cse:sys/status_effects/use {attribute:"movement_speed",duration:100,base:0.1,value:0.1,max:0.5, id:"energy_infusion_stone.executioner.skills.movement_speed",type:"add_multiplied_base"}

attribute @s attack_speed modifier add energy_infusion_stone.executioner.skills 0.25 add_multiplied_base