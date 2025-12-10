$dialog show @s {\
  type:"confirmation", title:"Graves Inventory Settings", columns:1, \
  inputs: [\
    {type:"boolean", key:"keep_xp", initial:$(keep_xp), label:"Keep Experience........................................................."}, \
    {type:"boolean", key:"keep_hotbar", initial:$(keep_hotbar), label:"Keep Hotbar..................................................................."}, \
    {type:"boolean", key:"keep_armor", initial:$(keep_armor), label:"Keep Armor......................................................................"}, \
    {type:"boolean", key:"keep_item", initial:$(keep_item), label:"Keep Some item.........................................................."}, \
    {type:"boolean", key:"lose_item", initial:$(lose_item), label:"Lose Some item.........................................................."}, \
  ], \
  yes:{label:"Save", tooltip:"Save Changes", width:119, action:{type:"dynamic/run_command", template:"$(template)"}}, \
  no:{label:"Back", tooltip:"Discard Unsaved Changes", width:119, action:{type:"run_command", command:"/trigger mp.settings set 10"}}\
}
