# 執行者 : boss

summon marker 137 304 178 {Tags:[stormpm.3.3]}
summon marker 173 304 164 {Tags:[stormpm.3.3]}
summon marker 187 304 128 {Tags:[stormpm.3.3]}
summon marker 173 304 92 {Tags:[stormpm.3.3]}
summon marker 137 304 78 {Tags:[stormpm.3.3]}
summon marker 87 304 128 {Tags:[stormpm.3.3]}
summon marker 101 304 164 {Tags:[stormpm.3.3]}

tag @e[type=marker,tag=stormpm.3.3,sort=random,limit=3] add temp
execute as @e[type=marker,tag=temp] at @s run function monsters:stormpromax/3/2b

kill @e[tag=stormpm.3.3]