dialog show @s {\
  type: "notice", title: "Graves Info", columns:1, \
  body: [\
    {type:"plain_message", width:500, contents:[{text:"Hover over each setting for more details..."}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Graves", \
      hover_event:{action:"show_text",value:"Toggles Graves"}}, \
      {underlined:false, text:".....................................................................................Default is Enabled."}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Grave Despawning", \
      hover_event:{action:"show_text",value:"Graves automatically despawn after some time, dropping their contents"}}, \
      {underlined:false, text:"..........................................................Default is Enabled."}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Grave Despawn Time", \
      hover_event:{action:"show_text",value:"The amount of time until a grave depawns"}}, \
      {underlined:false, text:".....................................................Default is 10min........"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Void Recovery", \
      hover_event:{action:"show_text",value:"After falling dying in the void, the grave appears on a nearby island"}}, \
      {underlined:false, text:"...................................................................Default is Enabled."}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Void Recovery Distance", \
      hover_event:{action:"show_text",value:"The maximum horizontal distance that a grave can spawn from the point of death in the void"}}, \
      {underlined:false, text:"............................................Default is 100m........."}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Locked Graves", \
      hover_event:{action:"show_text",value:"Graves can only be opened by their owner"}}, \
      {underlined:false, text:"..................................................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Key", \
      hover_event:{action:"show_text",value:"Recieve a key after dying which will allow other players to unlock your grave"}}, \
      {underlined:false, text:"..............................................................................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Auto Unlock", \
      hover_event:{action:"show_text",value:"Graves automatically unlock after some time"}}, \
      {underlined:false, text:"..........................................................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Auto Unlock Time", \
      hover_event:{action:"show_text",value:"The amount of time until a grave automatically unlocks"}}, \
      {underlined:false, text:"..............................................................Default is 5min..........."}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Show Death Coordinates", \
      hover_event:{action:"show_text",value:"The coordinates of death are shown in chat to the player that died"}}, \
      {underlined:false, text:"...........................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Death Locator Compass", \
      hover_event:{action:"show_text",value:"Recieve a compass after dying which points to site of your death"}}, \
      {underlined:false, text:"............................................Default is Disabled"}]}, \
    {type:"plain_message", contents:"Inventory Settings"}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Keep Experience", \
      hover_event:{action:"show_text",value:"Experience is kept on death"}}, \
      {underlined:false, text:".............................................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Keep Hotbar", \
      hover_event:{action:"show_text",value:"item in the hotbar are kept on death"}}, \
      {underlined:false, text:"........................................................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Keep Armor", \
      hover_event:{action:"show_text",value:"Equipped armor is kept on death"}}, \
      {underlined:false, text:"..........................................................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Keep Some item", \
      hover_event:{action:"show_text",value:"Keep some types of item on death. Change by editing m_graves/tags/item/kept_item, which contains tools, weapons, armor, and other equipment by default"}}, \
      {underlined:false, text:"..............................................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Lose Some item", \
      hover_event:{action:"show_text",value:"Delete some types of item on death. Change by editing m_graves/tags/item/lost_item, which is empty by default."}}, \
      {underlined:false, text:"..............................................................Default is Disabled"}]}, \
    {type:"plain_message", contents:"Cosmetic Settings"}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Glowing Graves", \
      hover_event:{action:"show_text",value:"The outline of graves can be seen through walls"}}, \
      {underlined:false, text:"..................................................................Default is Disabled"}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Display Player Name", \
      hover_event:{action:"show_text",value:"Graves displayer the name of their owner"}}, \
      {underlined:false, text:".....................................................Default is Enabled."}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Display Player Head", \
      hover_event:{action:"show_text",value:"Graves display the head of their owner"}}, \
      {underlined:false, text:".....................................................Default is Enabled."}]}, \
    {type:"plain_message", width:500, contents:[{underlined:true, text:"Grave Decorators", \
      hover_event:{action:"show_text",value:"Graves have randomized decorations"}}, \
      {underlined:false, text:".........................................................Default is Enabled."}]}, \
  ], \
  action: {label:"Back", width:120, action:{type:"run_command", command:"/trigger mp.settings set 10"}}\
}
