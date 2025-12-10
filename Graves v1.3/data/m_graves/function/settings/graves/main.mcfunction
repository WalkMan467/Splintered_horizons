dialog show @s {\
  type:"multi_action", title:"Graves", columns:1, \
  actions: [\
    {label:"General Settings...", width:180, action:{type:"run_command", command:"/trigger mp.settings set 13"}}, \
    {label:"Inventory Settings...", width:180, action:{type:"run_command", command:"/trigger mp.settings set 14"}}, \
    {label:"Cosmetic Settings...", width:180, action:{type:"run_command", command:"/trigger mp.settings set 15"}}, \
    {label:"Information ⓘ...", width:120, action:{type:"run_command", command:"/trigger mp.settings set 11"}}, \
    {label:"Debug Commands...", width:120, action:{type:"run_command", command:"/trigger mp.settings set 12"}}, \
    {label:"Reset to Default ⟳", width:120, action:{type:"run_command", command:"/function m_graves:settings/graves/reset"}}, \
  ], \
  exit_action: {label:"Done", width:120, action:{type:"run_command", command:"/trigger mp.settings set -1"}}\
}
