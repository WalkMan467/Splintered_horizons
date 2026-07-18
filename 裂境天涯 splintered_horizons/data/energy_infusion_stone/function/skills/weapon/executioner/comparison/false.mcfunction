playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.75

function cse:sys/status_effects/use {attribute:"attack_damage",duration:1,base:0.0,value:0.0,max:0.0, id:"energy_infusion_stone.executioner.skills.attack_damage",type:"add_multiplied_base"}
function cse:sys/status_effects/use {attribute:"attack_speed",duration:1,base:0.0,value:0.0,max:0.0, id:"energy_infusion_stone.executioner.skills.attack_speed",type:"add_multiplied_base"}
function cse:sys/status_effects/use {attribute:"movement_speed",duration:1,base:0.0,value:0.0,max:0.0, id:"energy_infusion_stone.executioner.skills.movement_speed",type:"add_multiplied_base"}

scoreboard players reset @s energy_infusion_stone.executioner.user.id
attribute @s attack_speed modifier remove energy_infusion_stone.executioner.skills