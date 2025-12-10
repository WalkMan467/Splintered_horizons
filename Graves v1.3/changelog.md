# Graves Datapack Version 1.3
## Settings Changes
- (+) UI menu for settings
- (+) Added Auto Unlock and Auto Unlock timer settings
- (+) Added locked grave Keys toggle
- (+) Added Death Locator Compass toggle
- (/) Increased default time until grave despawn (5min -> 10min)
## Grave changes
- (+) Added keys which will unlock their corresponding grave and disappears once used
- (+) Added Death Locator Compass and disappears from the inventory once the grave is opened
- (+) Added smart placement for graves
  - If the player dies in a block, the grave will check for adjacent open spaces
  - If a player dies mid-air, the grave will move to down to the floor
  - If the player dies in lava, the grave will move to the surface of the lava
  - If void recovery is enabled, dying over the void will be treated as dying in the void
- (+) When the datapack is enabled/disabled through the settings, it will restore relevant gamerules to their original values
- (/) Grave depawn timers continue even when the grave is not in a loaded chunk
- (+) Added music disc Tears to the `rare_item` item tag
## Bugfixes:
- Spectators no longer leave graves
- Gold blocks were missing from the `resources` item tag