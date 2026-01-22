
# mysterray = mystery array的縮寫，中文翻譯就是迷陣
summon minecraft:item_display ~ ~-0.25 ~ {Tags:["monster.elekiel_phase_2.1.mysterray","summon","monster.elekiel_phase_2.1.display","mob.elekiel.display"], item: {components: {"minecraft:item_model": "mob:elekiel/mysterray"}, count: 1, id: "minecraft:paper"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.5f, 0.0f]}, start_interpolation:0,Passengers:[{Tags:["monster.elekiel_phase_2.1.display","mob.elekiel.display"],id:slime,attributes:[{id:"scale",base:0},{id:"max_health",base:30}],CustomName:"",active_effects:[{id:invisibility,duration:-1,show_particles:false}],DeathLootTable:"",Size:0,Silent:1b,NoAI:1b},{id:text_display,Tags:["monster.elekiel_phase_2.1.text"],alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, brightness:{block:15,sky:15}, line_width: 200, see_through: 0b, shadow: 0b, shadow_strength: 0.0f, text: "", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 1.5f, 0.0f]}, view_range: 2.0f}]}

execute \
    as @n[type=item_display,tag=summon] \
    on passengers \
    if entity @s[type=slime] run \
function monsters:chapter_2/elekiel_phase_2/1/mysterray/slime/use

# fx
playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 0.5 0
playsound minecraft:entity.warden.death master @a ~ ~ ~ 0.5 1
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 0.25 1

particle instant_effect{color:16383232,power:1.5} ~ ~ ~ 0 0 0 0.0001 30 force
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use
function monsters:chapter_2/elekiel_phase_2/1/error_dust/use