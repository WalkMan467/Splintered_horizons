
summon minecraft:item_display ~ ~ ~ {Tags:["mob.elekiel.3.cage","mob.elekiel.3.display","mob.elekiel.display"], item: {components: {"minecraft:item_model": "mob:elekiel/cage_chain"}, count: 1, id: "minecraft:paper"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}, teleport_duration:1}

execute rotated 45 0 run function mob:elekiel/3/mysterray/use
execute rotated 135 0 run function mob:elekiel/3/mysterray/use
execute rotated 225 0 run function mob:elekiel/3/mysterray/use
execute rotated 315 0 run function mob:elekiel/3/mysterray/use

# fx
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2
playsound minecraft:block.chain.break master @a ~ ~ ~ 0.75 0
playsound minecraft:block.grindstone.use master @a ~ ~ ~ 0.5 1.5