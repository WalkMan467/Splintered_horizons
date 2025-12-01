execute unless data storage multipack:graves item[-1] if data storage multipack:graves {Xp:0} run return run \
  tellraw @s {"text":"> The last dropped inventory does not exist, was already retrieved, or was overwritten by a grave being opened.","color":"red"}
execute unless data storage multipack:graves item[-1].components run data modify storage multipack:graves item[-1].components set value "{}"
function m_graves:graves/drop_item with storage multipack:graves item[-1]
execute unless data storage multipack:graves {Xp:0} summon experience_orb run data modify entity @s Value set from storage multipack:graves Xp
data modify storage multipack:graves Xp set value 0
