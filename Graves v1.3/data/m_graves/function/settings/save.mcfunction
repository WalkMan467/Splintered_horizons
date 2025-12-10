## Saves settings data $(settings) and sends the player to page id $(page)
$data merge storage multipack:settings $(settings)
$scoreboard players set @s mp.settings $(page)
function m_graves:settings/graves/save with storage multipack:settings graves
