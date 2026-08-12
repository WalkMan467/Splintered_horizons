
execute \
    unless block ~ ~ ~ #penetrate run \
    return run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/end
scoreboard players remove $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast 1

# particle flame ~ ~ ~ 0 0 0 0 5 force @a


execute \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast matches 1.. rotated ~ 90 \
    positioned ^ ^ ^1 \
    unless block ~ ~ ~ #penetrate run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/point

execute \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast matches ..1 rotated ~ 90 \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/end

execute \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast matches 1.. rotated ~ 90 \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/sword/aquilumera/switch/water/fx/rdm_pos/racast