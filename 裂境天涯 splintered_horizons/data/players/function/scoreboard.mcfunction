# 常用
scoreboard objectives add player.id dummy "[玩家] ID"
scoreboard objectives add player.hide dummy "[玩家] 隱藏"
scoreboard objectives add player.gamemode dummy "[玩家] 遊戲模式"
scoreboard objectives add player.health health "[玩家] 血量"
scoreboard objectives add player.max_health dummy "[玩家] 最大血量"

scoreboard objectives add player.hurt_time dummy "[玩家] 受傷時間"
scoreboard objectives add player.ultimate dummy "[玩家] 終焉之眼CD"
scoreboard objectives add player.give.item.delay dummy "[玩家] 給予玩家物品延遲"

scoreboard objectives add player.otherworld_key.count dummy "[玩家] 異界鑰匙數量"

scoreboard objectives add player.death_count dummy [{"text":"💀","bold":true,"color":"red"},{"translate":"tips.player_death.3","bold":false,"color":"white"},{"text":"💀","bold":true,"color":"red"}]

scoreboard players add @a player.ultimate 0

# ==================================================================================================

# actionbar
scoreboard objectives add player.actionbar.weapon.nightfall dummy "[玩家] actionbar 狀態機 夜幕技能顯示"
scoreboard objectives add player.actionbar.weapon.spider dummy "[玩家] actionbar 狀態機 蜘蛛技能顯示"

scoreboard objectives add player.actionbar.otherworld_portal.1 dummy "[玩家] actionbar 狀態機 異界之門提示"
scoreboard objectives add player.actionbar.otherworld_portal.2 dummy "[玩家] actionbar 狀態機 異界之門提示(未擁有鑰匙)"

scoreboard objectives add player.actionbar.tree_of_world_memory.1 dummy "[玩家] actionbar 狀態機 世界記憶之樹提示"
scoreboard objectives add player.actionbar.tree_of_world_memory.2 dummy "[玩家] actionbar 狀態機 世界記憶之樹提示2"


scoreboard players add @a player.actionbar.weapon.nightfall 0
scoreboard players add @a player.actionbar.weapon.spider 0

scoreboard players add @a player.actionbar.otherworld_portal.1 0
scoreboard players add @a player.actionbar.otherworld_portal.2 0

scoreboard players add @a player.actionbar.tree_of_world_memory.1 0
scoreboard players add @a player.actionbar.tree_of_world_memory.2 0

# ==================================================================================================
# 其他
scoreboard objectives add player.animation.lock dummy "[玩家] 強制鎖玩家動畫"
scoreboard objectives add player.no_cd dummy "[玩家] 鎖 CD"
scoreboard objectives add player.click.interval dummy "[玩家] 使用間隔"
scoreboard objectives add player.auto_crafting.brick dummy "[玩家] 自動合成 紅磚頭"
scoreboard objectives add player.auto_crafting.coal dummy "[玩家] 自動合成 木棒"
scoreboard objectives add player.bow dummy "[玩家] 箭矢偵測附魔"
scoreboard objectives add player.spawnpoint.pos.x dummy "[玩家] 重生點 X座標"
scoreboard objectives add player.spawnpoint.pos.y dummy "[玩家] 重生點 Y座標"
scoreboard objectives add player.spawnpoint.pos.z dummy "[玩家] 重生點 Z座標"
scoreboard objectives add player.spawnpoint.dimension dummy "[玩家] 重生點 維度"
scoreboard objectives add player.gamemode.change.display_delay dummy "[玩家] 模式改變顯示延遲"
scoreboard objectives add screen_filters.glitch_effect.id dummy "[玩家] 螢幕故障濾鏡 ID"
scoreboard objectives add screen_filters.glitch_effect.noise dummy "[玩家] 螢幕故障 雜訊"
scoreboard objectives add player.join_game.detect.delay dummy "[玩家] 進入遊戲偵測延遲"

scoreboard players add @a player.no_cd 0
scoreboard players add @a player.animation.lock 0
scoreboard players add @a player.click.interval 0
scoreboard players add @a player.auto_crafting.brick 0
scoreboard players add @a player.gamemode.change.display_delay 0
scoreboard players add @a screen_filters.glitch_effect.noise 0
scoreboard players add @a player.join_game.detect.delay 0

# ==================================================================================================
# 禁用
scoreboard objectives add player.disable.elytra_switch dummy "[玩家] 禁用滑翔翼切換"
scoreboard objectives add player.disable.movement dummy "[玩家] 禁用移動"
scoreboard objectives add player.shift.skill.disable dummy "[玩家] 禁用 Shift 主動技偵測"


# ==================================================================================================
# 偵測
scoreboard objectives add player.detect.drop minecraft.custom:minecraft.drop "[玩家] 偵測丟棄"
scoreboard objectives add player.detect.air dummy "[玩家] 空中時間"
scoreboard objectives add player.detect.death deathCount "死亡偵測"
scoreboard objectives add player.detect.click_event.trigger trigger "[玩家] 點擊事件觸發"
scoreboard objectives add player.detect.quick_actions.trigger trigger "[玩家] 快速動作事件觸發"
scoreboard objectives add player.detect.tp.trigger trigger "[玩家] 傳送書觸發"
scoreboard objectives add player.detect.sneak dummy "[玩家] 潛行偵測"

# ==================================================================================================