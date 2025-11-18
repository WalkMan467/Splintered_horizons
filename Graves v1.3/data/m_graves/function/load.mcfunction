## June 2025
## CooledBeans
## 1.21.6
scoreboard objectives add mp.const dummy
scoreboard objectives add mp.persist dummy
scoreboard objectives add mp.temp dummy
scoreboard objectives add mp.settings trigger
scoreboard players enable @a mp.settings

scoreboard players set #1 mp.const 1
scoreboard players set #60 mp.const 60

function m_graves:graves/load
