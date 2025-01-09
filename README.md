# [裂境天涯 | Splintered Horizons 規格](https://https://github.com/Oscar9610/Otherside)

> 這是資料包製作的規格，方便你或者未來的人快速理解資料包整理的路徑跟規格等


---

#### 目錄
[Toc]


# 基本要求
1. 地圖是可以多人遊玩，所以很多的東西不能寫死
2. 在製作想要的內容前，請多利用 Minecraft 現有框架
3. 請留意TPS以及FPS (這點很重要) `F3 + L` 可以抓取效能資料

---


# 如何讓地圖架構不寫死且做到整潔、省效能等?

## 範例1 (區域名顯示):
>[!Warning]🤢請別這樣寫🤢
  

### world_area:chapter_1/loop (function)
```hs

# Guide player.

    execute if biome ~ ~ ~ world_area:chapter_1/broken_city run scoreboard players set @s world_area.broken_city 1

    # Else
    execute unless biome ~ ~ ~ world_area:chapter_1/broken_city run scoreboard players set @s world_area.broken_city 1
    
# Loop.

execute if score @s world_area.broken_city matches 0 if biome ~ ~ ~ world_area:chapter_1/broken_city run function world_area:chapter_1/broken_city/in

execute unless score @s world_area.broken_city matches 0 unless biome ~ ~ ~ world_area:chapter_1/broken_city run function world_area:chapter_1/broken_city/out

```

### world_area:chapter_1/broken_city/in (function)
```hs
title @s title {"text":"Broken City"}
title @s times 10 20 20

scoreboard players set @s world_area.broken_city 2
```

### world_area:chapter_1/broken_city/out (function)
```hs
scoreboard players set @s world_area.broken_city 0
```

>[!Important]缺點: scoreboard 不是不行，但 Minecraft 有 Advancement 這個框架可以搞定！可以省略多餘的偵測


---

## 優化後範例:

### world_area:chapter_1/loop (function)
```hs
# Guide

    ## 導向到 [ function world_area:main/loop ]

#==================================================

# 第一章

    # 破碎之都

    execute if biome ~ ~ ~ world_area:chapter_1/broken_city run advancement grant @s only world_area:chapter_1/broken_city/in
    execute unless biome ~ ~ ~ world_area:chapter_1/broken_city run advancement grant @s only world_area:chapter_1/broken_city/out
```
> 🫠你可以多利用 Advancement 一次性執行等等特性🫠

### world_area:chapter_1/broken_city/in (Advancement)
```json
{
  "criteria": {
    "requirement": {
      "trigger": "minecraft:impossible",
      "conditions": {}
    }
  },
  "rewards": {
    "function": "world_area:chapter_1/broken_city/in"
  }
}

```
> 🫠Advancement 的 in 導向對應 Function 的 in🫠

### world_area:chapter_1/broken_city/out (Advancement)
```json
{
  "criteria": {
    "requirement": {
      "trigger": "minecraft:impossible",
      "conditions": {}
    }
  },
  "rewards": {
    "function": "world_area:chapter_1/broken_city/out"
  }
}

```
> 🫠Advancement 的 out 導向對應 Function 的 out🫠

### world_area:chapter_1/broken_city/in (Function)
```hs
title @s title ["",{"text":"🌧","color":"gold"},{"text":"破碎之都","underlined":true,"color":"gold"},{"text":"🌧","color":"gold"}]
title @s subtitle [{"text":"🌧","color":"gold"},{"text":"Broken City","italic":true,"underlined":true,"color":"gold"},{"text":"🌧","color":"gold"}]
title @s times 20 20 20

advancement revoke @s only world_area:chapter_1/broken_city/out
```
> 🫠這樣不用記分板且很整潔🫠

### world_area:chapter_1/broken_city/out (Function)
```hs
advancement revoke @s only world_area:chapter_1/broken_city/in
```
> 🫠這裡你就能延伸一些當玩家離開那個區域會觸發什麼的機制等🫠

>[!Tip]這樣我成功省略了記分板、記分板in、out 狀態數據偵測、執行 in、out 的 function 不用 記分板 Block 掉

---

# 資料包路徑

1. Effect / 狀態效果
2. hotbar_sound / 切換物品的音效
3. items / 物品、道具
4. main / 主控核心
5. music / 背景音樂
6. recipes / 所有自定義合成
7. system / 所有系統
8. task / 任務、成就
9. weapons / 所有武器、箭矢
10. world_area / 區域
11. monsters / 所有怪物、BOSS

## 特殊標籤

### 實體類型
| 命名空間 | 名稱 | 包含內容 |
| -------- | -------- | -------- |
| minecraft:     | dummy_mob     | area_effect_cloud, armor_stand, #minecraft:arrows, marker     |


## 記分板、標籤等取名格式

| 類別 | 命名格式 |
| -------- | -------- |
| 🌀狀態效果🌀     | `effect.*`     |
| 🔑物品🔑     | `item.*`     |
| 🔑物品CD🔑     | `item.*.cd`     |
| 🛡️裝備🛡️     | `armor.*`     |
| 🛡️裝備CD🛡️     | `armor.*.cd`     |
| 🫠玩家🫠     | `player.*`     |
| 👾怪物👾     | `monster.*`     |
| 👾怪物技能👾     | `monster.*.skill.*`     |
| 👾怪物技能CD👾     | `monster.*.cd`     |
| 👹BOSS👹     | `boss.*`     |
| 👾BOSS技能👾     | `boss.*.skill.*`     |
| 👾BOSS技能CD👾     | `boss.*.cd`     |
| ⚙️主要核心⚙️     | `main.*`     |
| 🎵背景音樂🎵     | `music.*`     |
| 🛠️合成🛠️     | `recipe.*`     |
| 💻系統💻     | `system.*`     |
| 📝任務📝     | `task.*`     |
| 🏆成就🏆     | `adv.*`     |
| 🗡️武器名稱🗡️  | `weapon.*`     |
| 🗡️武器種類🗡️  | `weapon.*.type`     |
| 🗡️武器故事🗡️  | `weapon.*.story.*`  |
| 🗡️武器技能名稱🗡️  | `weapon.*.skill`  |
| 🗡️武器技能敘述🗡️  | `weapon.*.skill.*`  |
| 🏕️區域🏕️     | `world_area.*`     |

# Effect 狀態效果
因為每一個狀態效果都有可能套用在怪物身上，所以請用記分板搭建 Timer 偵測

## effect:main
```hs
# Timer
scoreboard players remove @s[scores={effect.void=1..}] effect.void 1

# ===================================================================

execute if score @s effect.void matches 2.. run function effects:void/true

execute if score @s effect.void matches 1 run function effects:void/false
```

>[!Tip]提示
>Timer顧名思義所以請你把計時器用記分板放那
>分割線下方請放置效果執行 function

# hotbar_sound 快捷欄切換音效
沒特別要求，我想你多半不會改

# item 物品
沒特別要求

# armor 裝備

#### 整理方式
| 根目錄 | 對應 |
| -------- | -------- |
| get     | 獲取     |
| passive     | 被動技能、套裝技能     |

在製作技能前建議以「簡單的機制，延伸的設計」為核心
像是Ragecraft 4的設計就是
很多藥水都會給敵人凋零、緩速、易傷的效果
所以他設計很多「延伸的東西」，例如：擊殺凋零中的敵人會招喚毒圈

# weapon 武器
#### 整理方式
| 根目錄 | 對應 |
| -------- | -------- |
| get     | 獲取     |
| type     | 使用技能     |
| passive     | 被動技能     |

在製作技能前建議以「簡單的機制，延伸的設計」為核心
像是Ragecraft 4的設計就是
很多藥水都會給敵人凋零、緩速、易傷的效果
所以他設計很多「延伸的東西」，例如：擊殺凋零中的敵人會招喚毒圈

# Player 玩家

沒特別要求

# Monster 怪物、BOSS

| 記分板 | 對應 |
| -------- | -------- |
| monsters.cast     | 怪物技能cd     |
| monsters.casting     | 怪物技能施法中     |

| 通用function | 對應 |
| -------- | -------- |
| monsters:<namespace>/main     | 對應技能的Loop、怪物as跟at導向     |
| monsters:<namespace>/main.monster     | 怪物施法     |
| monsters:<namespace>/<skill_id>/use     | 給予對應技能tag     |
| monsters:<namespace>/<skill_id>/main     | 對應技能loop     |
| monsters:<namespace>/cast/cast     | 偵測技能並給予對應技能tag     |
| monsters:<namespace>/cast/end     | 結束當前技能     |
    
請遵循以下規則創建怪物，並把創建後的 `monsters:<namespace>/main` 放到 `monsters:main`裡