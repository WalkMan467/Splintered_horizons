[![hackmd-github-sync-badge](https://hackmd.io/fxmXpTycQcOWRPgMH4OGPA/badge)](https://hackmd.io/fxmXpTycQcOWRPgMH4OGPA)

# 裂境天涯: 始源與終焉數據包操作日誌MD
## 通用功能

### 1. 不可選中

>[!Note] 可使大部分的選中機制失效
> 名稱: `sys.dummy_mob` \
> 類型: 記分板、標籤 \
> 可指定對象: 玩家、怪物、BOSS \

### 2. 動畫打斷

>[!Note] 可打斷玩家特殊技能釋放動畫並歸還相關數值
> 名稱: `players:stop_animation` \
> 類型: function \
> 可指定對象: 玩家
> 
> 延伸功能: `forced_interrupt_animation` \
> `forced_interrupt_animation`: Tag 標籤，在執行 function 之前添加此標籤可以使技能 CD 等相關數值不歸還