#載入區塊，確保效果雲不會消失：
forceload add -1 -1 0 0

#生成目標點(object)：
summon area_effect_cloud 0.0 600.0 0.0 {UUID:[I; 10, 0 ,1 ,2],Tags:["throwing.motion"],Particle:{type:"block",block_state:"air"},Radius:0,Duration:2147483647}