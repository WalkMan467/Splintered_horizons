# ===================================================
# 劍 晨曦之光 觸發 / sword morning light activate

    ## Guide [ function weapons:type/sword/morning_light/use ] >>> 劍 晨曦之光 觸發 / sword morning light activate
    ## Guide [ function weapons:type/sword/morning_light/effect/fx/use ] >>> 劍 晨曦之光 效果 特效 觸發 / sword morning light effect visuals activate
    ## Guide [ function dmg_formula:weapons/type/sword/morning_light/calculate ] >>> weapons 劍 晨曦之光 計算 / weapons sword morning light calculate

# ===================================================


execute \
    on attacker \
    unless score @s weapon.morning_light.cd matches -2147483648..2147483647 run \
    return run \
function weapons:rc/cd {id:"weapon.morning_light.cd", cd:100}

execute \
    on attacker \
    unless score #gametime global.main >= @s weapon.morning_light.cd run \
    return 0

# 重置 CD / Reset CD

execute \
    on attacker \
    unless score @s weapon.effect.resplendence matches 1.. run \
function weapons:rc/cd {id:"weapon.morning_light.cd", cd:100}

# 如果有輝煌之光符文 ;重置 CD / If you have the「Brilliant Light」rune ;Reset CD

execute \
    on attacker \
    if score @s weapon.effect.resplendence matches 1.. run \
function weapons:rc/cd {id:"weapon.morning_light.cd", cd:10}

particle dust_color_transition{from_color:[1.000,0.800,0.000],scale:1,to_color:[1.000,0.729,0.459]} ~ ~0.5 ~ 1.5 0 1.5 1 60 normal @a



execute \
    as @e[type=!player,type=!#dummy_mob,distance=..3] \
    unless score @s sys.dummy_mob matches 1.. run \
function cse:sys/status_effects/use {type:"add_multiplied_base", attribute:"armor",duration:200,base:-0.1,value:-0.1,max:0.3, id:"morning_light"}

function weapons:type/sword/morning_light/effect/fx/use

tag @e[type=!player,type=!#dummy_mob,distance=..3] add dmger

execute \
    on attacker run \
tag @s[tag=!atker,type=player] add atker

execute \
    on attacker run \
scoreboard players set @s[tag=atker,type=player] dmg_formula.atk_percentage 150

execute \
    on attacker \
    as @s[type=player] run \
function dmg_formula:weapons/type/sword/morning_light/calculate

execute \
    on attacker run \
scoreboard players set @s weapon.effect.holy_fire 200