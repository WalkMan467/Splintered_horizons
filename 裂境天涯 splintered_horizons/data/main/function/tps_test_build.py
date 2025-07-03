print("")
print("TPS 壓力測試腳本 v1.0")
print("")
print("作者: WalkMan467")
print("")
print("=====================")
print("")
while(True):
    r_max = int(input("請輸入循環次數:"))
    r = 0
    while r < r_max:
            r += 1
            print("summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:20}")
    
    print("")
    print(f"已循環 {r_max} 次！")
    print(f"把指令寫入到 tps_test.mcfunction 後丟到重覆指令方塊即可！5")