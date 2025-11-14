$dialog show @s {\
  type:"confirmation", title:"Graves Cosmetic Settings", columns:1, \
  inputs: [\
    {type:"boolean", key:"glowing", initial:$(glowing), label:"Glowing graves............................................................."}, \
    {type:"boolean", key:"display_name", initial:$(display_name), label:"Display Player Name................................................."}, \
    {type:"boolean", key:"display_head", initial:$(display_head), label:"Display Player Head................................................."}, \
    {type:"boolean", key:"grave_decorators", initial:$(grave_decorators), label:"Grave Decorators....................................................."}, \
  ], \
  yes:{label:"Save", tooltip:"Save Changes", width:119, action:{type:"dynamic/run_command", template:"$(template)"}}, \
  no:{label:"Back", tooltip:"Discard Unsaved Changes", width:119, action:{type:"run_command", command:"/trigger mp.settings set 10"}}\
}
