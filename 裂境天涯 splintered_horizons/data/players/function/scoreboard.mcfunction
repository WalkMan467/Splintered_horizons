# 虛空保護
function players:void_protection/introduction

# 常用
scoreboard objectives add player.id dummy "[玩家] ID"
scoreboard objectives add player.hide dummy "[玩家] 隱藏"
scoreboard objectives add player.gamemode dummy "[玩家] 遊戲模式"
scoreboard objectives add player.health health "[玩家] 血量"
scoreboard objectives add player.max_health dummy "[玩家] 最大血量"

scoreboard objectives add player.hurt_time dummy "[玩家] 受傷時間"
scoreboard objectives add player.ultimate dummy "[玩家] 終焉之眼CD"
scoreboard objectives add player.finality_tunder dummy "[玩家] 終焉閃電層數"
scoreboard objectives add player.finality_tunder.temp dummy "[玩家] 終焉閃電層數 暫存"
scoreboard objectives add player.give.item.delay dummy "[玩家] 給予玩家物品延遲"
scoreboard objectives add player.leave_game minecraft.custom:minecraft.leave_game "[玩家] 離開遊戲"

scoreboard objectives add player.effect.glitch_effect dummy "[玩家] Glitch Effect"

scoreboard objectives add player.otherworld_key.count dummy "[玩家] 異界鑰匙數量"

scoreboard objectives add player.death_count dummy [{"text":"💀","bold":true,"color":"red"},{"translate":"tips.player_death.3","bold":false,"color":"white"},{"text":"💀","bold":true,"color":"red"}]

scoreboard players add @a player.ultimate 0
scoreboard players add @a player.finality_tunder 0

# ==================================================================================================

# actionbar
scoreboard objectives add player.actionbar.weapon.nightfall dummy "[玩家] actionbar 狀態機 夜幕技能顯示"
scoreboard objectives add player.actionbar.weapon.spider dummy "[玩家] actionbar 狀態機 蜘蛛技能顯示"
scoreboard objectives add player.actionbar.weapon.earthquake_axe dummy "[玩家] actionbar 狀態機 地震之斧"
scoreboard objectives add player.actionbar.weapon.earthquake_axe dummy "[玩家] actionbar 狀態機 地震之斧"
scoreboard objectives add player.actionbar.armor.wtsf dummy "[玩家] actionbar 狀態機 時間停刻之時"

scoreboard objectives add player.actionbar.segrina.1 dummy "[玩家] actionbar 狀態機 西格瑞納 技能 1 吸收提示"


scoreboard objectives add player.actionbar.otherworld_portal.1 dummy "[玩家] actionbar 狀態機 異界之門提示"
scoreboard objectives add player.actionbar.otherworld_portal.2 dummy "[玩家] actionbar 狀態機 異界之門提示(未擁有鑰匙)"

scoreboard objectives add player.actionbar.tree_of_world_memory.1 dummy "[玩家] actionbar 狀態機 世界記憶之樹提示"
scoreboard objectives add player.actionbar.tree_of_world_memory.2 dummy "[玩家] actionbar 狀態機 世界記憶之樹提示2"

scoreboard objectives add player.actionbar.zipline_platform dummy "[玩家] actionbar 狀態機 提示"
scoreboard objectives add player.actionbar.zipline_platform.useing dummy "[玩家] actionbar 狀態機 使用中提示"

scoreboard objectives add player.actionbar.disabled_bed dummy "[玩家] actionbar 狀態機 禁用床提示"

scoreboard objectives add player.actionbar.disabled_anvil dummy "[玩家] actionbar 狀態機 禁用鐵砧提示"

scoreboard objectives add player.actionbar.sys.forging_table.failure dummy "[玩家] actionbar 狀態機 失敗提示"
scoreboard objectives add player.actionbar.sys.forging_table.failure.id dummy "[玩家] actionbar 狀態機 失敗提示 ID"

scoreboard objectives add player.actionbar.eye_of_finality dummy "[玩家] actionbar 狀態機 終焉之眼"

scoreboard objectives add player.actionbar.apostle_of_eternity.lock dummy "[玩家] actionbar 狀態機 「永劫」使徒 時空鎖"
scoreboard objectives add player.actionbar.apostle_of_eternity.lock.1 dummy "[玩家] actionbar 狀態機 「永劫」使徒 時空鎖"

scoreboard players add @a player.actionbar.apostle_of_eternity.lock 0
scoreboard players add @a player.actionbar.apostle_of_eternity.lock.1 0

scoreboard objectives add player.actionbar.beginner_tutorial.failure dummy "[玩家] actionbar 狀態機 新手教學獲取物品失敗提示"
scoreboard objectives add player.actionbar.npc_interaction.tips dummy "[玩家] actionbar 狀態機 NPC 互動提示"

scoreboard players add @a player.actionbar.beginner_tutorial.failure 0
scoreboard players add @a player.actionbar.npc_interaction.tips 0

scoreboard players add @a player.actionbar.eye_of_finality 0

scoreboard players add @a player.actionbar.weapon.nightfall 0
scoreboard players add @a player.actionbar.weapon.spider 0

scoreboard players add @a player.actionbar.otherworld_portal.1 0
scoreboard players add @a player.actionbar.otherworld_portal.2 0

scoreboard players add @a player.actionbar.tree_of_world_memory.1 0
scoreboard players add @a player.actionbar.tree_of_world_memory.2 0

scoreboard players add @a player.actionbar.sys.forging_table.failure 0

scoreboard players add @a player.actionbar.disabled_bed 0

scoreboard players add @a player.actionbar.disabled_anvil 0

# ==================================================================================================
# 其他
scoreboard objectives add player.animation.lock dummy "[玩家] 強制鎖玩家動畫"
scoreboard objectives add player.no_cd dummy "[玩家] 鎖 CD"
scoreboard objectives add player.click.interval dummy "[玩家] 使用間隔"
scoreboard objectives add player.auto_crafting.brick dummy "[玩家] 自動合成 紅磚頭"
scoreboard objectives add player.auto_crafting.coal dummy "[玩家] 自動合成 木棒"
scoreboard objectives add player.modify.data_setup.bow dummy "[玩家] 箭矢修改偵測"
scoreboard objectives add player.modify.data_setup.pickaxe dummy "[玩家] 礦鎬修改偵測"
scoreboard objectives add player.modify.data_setup.block.shulker_box dummy "[玩家] 界伏和修改偵測"
scoreboard objectives add player.spawnpoint.pos.x dummy "[玩家] 重生點 X座標"
scoreboard objectives add player.spawnpoint.pos.y dummy "[玩家] 重生點 Y座標"
scoreboard objectives add player.spawnpoint.pos.z dummy "[玩家] 重生點 Z座標"
scoreboard objectives add player.spawnpoint.dimension dummy "[玩家] 重生點 維度"
scoreboard objectives add player.gamemode.change.display_delay dummy "[玩家] 模式改變顯示延遲"
scoreboard objectives add screen_filters.glitch_effect.id dummy "[玩家] 螢幕故障濾鏡 ID"
scoreboard objectives add screen_filters.glitch_effect.noise dummy "[玩家] 螢幕故障 雜訊"
scoreboard objectives add player.join_game.detect.delay dummy "[玩家] 進入遊戲偵測延遲"
scoreboard objectives add player.tombstone_sys.id dummy "[玩家] 墓碑系統ID"
scoreboard objectives add player.tombstone_sys.safe_fall_distance dummy "[玩家] 墓碑系統 安全墜落距離偵測"
scoreboard objectives add player.death.delay dummy
scoreboard objectives add player.damp_fx.timer dummy

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
scoreboard objectives add player.rc.skill.disable dummy "[玩家] 禁用 rc 主動技偵測"
scoreboard objectives add player.disable.tp_book dummy "[玩家] 禁用 傳送書"

scoreboard players add @a player.disable.tp_book 0

# ==================================================================================================
# 偵測
scoreboard objectives add player.detect.drop minecraft.custom:minecraft.drop "[玩家] 偵測丟棄"
scoreboard objectives add player.detect.air dummy "[玩家] 空中時間"
scoreboard objectives add player.detect.death deathCount "死亡偵測"
scoreboard objectives add player.detect.click_event.trigger trigger "[玩家] 點擊事件觸發"
scoreboard objectives add player.detect.quick_actions.trigger trigger "[玩家] 快速動作事件觸發"
scoreboard objectives add player.detect.tp.trigger trigger "[玩家] 傳送書觸發"
scoreboard objectives add player.detect.sneak dummy "[玩家] 潛行偵測"
scoreboard objectives add player.detect.sneak.delay dummy "[玩家] 潛行偵測延遲"
scoreboard objectives add player.detect.is_bossfight dummy "[玩家] 是否處於BOSS戰"
scoreboard objectives add player.detect.broken_spawner minecraft.mined:minecraft.spawner "[玩家] 破壞生怪磚"
scoreboard objectives add player.detect.hurt dummy "[玩家] 偵測受傷"
scoreboard objectives add player.detect.jump minecraft.custom:minecraft.jump "[玩家] 偵測空格 (僅偵測點按)"
scoreboard objectives add player.detect.sprint minecraft.custom:sprint_one_cm "[玩家] 偵測跑步"

# ==================================================================================================
# 玩家設定
scoreboard objectives add player.setting.reduce_particles dummy "[玩家] 減少粒子"
scoreboard objectives add player.setting.reduce_particles.trigger trigger "[玩家] 減少粒子 trigger"

scoreboard players enable @a player.setting.reduce_particles.trigger

scoreboard objectives add player.setting.smooth_walking dummy "[玩家] 平滑移動"
scoreboard objectives add player.setting.smooth_walking.trigger trigger "[玩家] 平滑移動 trigger"

scoreboard players enable @a player.setting.smooth_walking.trigger

scoreboard objectives add player.setting.waterfall_effect dummy "[玩家] 瀑布效應"
scoreboard objectives add player.setting.waterfall_effect.trigger trigger "[玩家] 瀑布效應 trigger"

scoreboard players enable @a player.setting.waterfall_effect.trigger

scoreboard objectives add player.setting.night_vision dummy "[玩家] 夜視效果"
scoreboard objectives add player.setting.night_vision.trigger trigger "[玩家] 夜視效果 trigger"

scoreboard players enable @a player.setting.night_vision.trigger

scoreboard objectives add player.setting.bloom dummy "[玩家] 光影泛光"
scoreboard objectives add player.setting.bloom.trigger trigger "[玩家] 光影泛光 trigger"

scoreboard players enable @a player.setting.bloom.trigger

scoreboard objectives add player.setting.auto_refill_items dummy "[玩家] 自動補充物品"
scoreboard objectives add player.setting.auto_refill_items.trigger trigger "[玩家] 自動補充物品 trigger"

scoreboard players enable @a player.setting.auto_refill_items.trigger

scoreboard objectives add player.setting.reset_default_setup.trigger trigger "[玩家] 重置默認 trigger"

scoreboard players enable @a player.setting.reset_default_setup.trigger

scoreboard objectives add player.setting.backup dummy "[玩家] 資料備份"
scoreboard objectives add player.setting.backup.trigger trigger "[玩家] 資料備份 trigger"
scoreboard objectives add player.setting.backup.trigger.disabled dummy "[玩家] 資料備份 禁用"

scoreboard players add @a player.setting.backup.trigger.disabled 0

scoreboard objectives add player.setting.backup.id dummy "[玩家] 資料備份 ID"
scoreboard objectives add player.setting.backup.return.id trigger "[玩家] 還原備份 ID"
scoreboard objectives add player.setting.recover_lost_objective_items.return trigger "[玩家] 還原遺失的目標物品 trigger"

scoreboard players add @a player.setting.backup.return.id 0
scoreboard players enable @a player.setting.backup.return.id

scoreboard players add @a player.setting.recover_lost_objective_items.return 0
scoreboard players enable @a player.setting.recover_lost_objective_items.return

scoreboard players enable @a player.setting.backup.trigger

scoreboard objectives add player.setting.campfire_darkness dummy "[玩家] 營火黑暗效果"
scoreboard objectives add player.setting.campfire_darkness.trigger trigger "[玩家] 營火黑暗效果 trigger"

scoreboard players enable @a player.setting.campfire_darkness.trigger