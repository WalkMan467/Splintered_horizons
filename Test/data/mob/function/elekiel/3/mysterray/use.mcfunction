# mysterray = mystery array的縮寫，中文翻譯就是迷陣
summon minecraft:item_display ~ ~ ~ {Tags:[mob.elekiel.3.mysterray,"summon","mob.elekiel.1.display","mob.elekiel.display"], item: {components: {"minecraft:item_model": "mob:elekiel/mysterray"}, count: 1, id: "minecraft:paper"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}, teleport_duration:1}
rotate @n[type=item_display,tag=summon] ~ 0
tag @n[type=item_display,tag=summon] remove summon