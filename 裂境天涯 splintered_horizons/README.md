[![hackmd-github-sync-badge](https://hackmd.io/fxmXpTycQcOWRPgMH4OGPA/badge)](https://hackmd.io/fxmXpTycQcOWRPgMH4OGPA)

# 裂境天涯: 始源與終焉數據包操作日誌MD
## 通用功能

### 1. 不可選中

>[!Note] 可使大部分的選中機制失效
> 名稱: `sys.dummy_mob` \
> 類型: scoreboard、tag \
> 可指定對象: Player、Entity、BOSS \

### 2. 動畫打斷

>[!Note] 可打斷玩家特殊技能釋放動畫並歸還相關數值
> 名稱: `players:stop_animation` \
> 類型: function \
> 可指定對象: Player
> 
> 延伸功能: `forced_interrupt_animation` \
> `forced_interrupt_animation`: Tag 標籤，在執行 function 之前添加此標籤可以使技能 CD 等相關數值不歸還

### 3. 跳過區域檢測
> [!Note] 進入區域時不會顯示區域名 
> 名稱：`sys.hide_world_area.name`\
> 類型：scoreboard、tag \
> 可指定對象：Player
> 
> 延伸功能：`sys.hide_world_area.skip_detect` \
> `sys.hide_world_area.skip_detect`： Tag 標籤，不會觸發進入區域的進度偵測