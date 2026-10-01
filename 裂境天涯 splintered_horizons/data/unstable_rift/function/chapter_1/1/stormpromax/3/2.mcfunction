# 執行者 : boss

summon marker -348 373 602 {Tags:[stormpm.3.3]}
summon marker -312 373 588 {Tags:[stormpm.3.3]}
summon marker -298 373 552 {Tags:[stormpm.3.3]}
summon marker -312 373 516 {Tags:[stormpm.3.3]}
summon marker -348 373 502 {Tags:[stormpm.3.3]}
summon marker -398 373 552 {Tags:[stormpm.3.3]}
summon marker -384 373 588 {Tags:[stormpm.3.3]}

tag @e[type=marker,tag=stormpm.3.3,sort=random,limit=3] add temp
execute as @e[type=marker,tag=temp] at @s run function unstable_rift:chapter_1/1/stormpromax/3/2b

kill @e[tag=stormpm.3.3]
