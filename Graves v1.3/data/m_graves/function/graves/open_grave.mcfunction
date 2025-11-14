## Drop all items from this grave then remove this grave.
scoreboard players operation &id mp.temp = @s mp.const
# Summon all items and experience in this grave
data modify storage multipack:graves Items set from entity @s data.Items
data modify storage multipack:graves Xp set from entity @s data.Xp
execute unless data storage multipack:graves Items[-1].components run data modify storage multipack:graves Items[-1].components set value "{}"
function m_graves:graves/drop_items with storage multipack:graves Items[-1]
execute unless data storage multipack:graves {Xp:0} summon experience_orb run data modify entity @s Value set from storage multipack:graves Xp
data modify storage multipack:graves Xp set value 0
# Clear key
execute store result storage multipack:graves key.id int 1 run scoreboard players get @s mp.const
function m_graves:graves/keys/clear_keys with storage multipack:graves key
# Clear grave
playsound block.gravel.break block @a
particle block{block_state:"coarse_dirt"} ~ ~.125 ~ 0.75 0.5 0.5 2 10
kill @e[distance=..0.1,type=#m_graves:grave,tag=multipack.grave,predicate=m_graves:compare_id]

# Legacy
kill @e[distance=..0.1,type=block_display,tag=multipack.grave_display,limit=5,sort=nearest]
kill @e[distance=..0.1,type=item_display,tag=multipack.grave_display,limit=1,sort=nearest]
kill @e[distance=..0.1,type=text_display,tag=multipack.grave_display,limit=2,sort=nearest]
kill @s

kill @n[distance=..0.1,type=interaction,tag=multipack.grave_display,sort=nearest]

