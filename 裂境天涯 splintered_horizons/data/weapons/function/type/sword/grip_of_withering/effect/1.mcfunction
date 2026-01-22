scoreboard players set @s weapon.grip_of_withering.passive.chance 15

function particle:type/expansion/grip_of_withering/passive/use
function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:10, max:100}