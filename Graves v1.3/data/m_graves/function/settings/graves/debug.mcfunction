dialog show @s {\
  type: "multi_action", title: "Graves Debug", columns:1, pause: false, after_action: "none", \
  actions: [\
    {label:"Open Nearest Grave", width:200, action:{type:"run_command", command:"/function m_graves:debug/open_nearest_grave"}}, \
    {label:"Open All Graves", width:200, action:{type:"run_command", command:"/function m_graves:debug/open_all_graves"}}, \
    {label:"Simulate Grave Spawn", width:200, action:{type:"run_command", command:"/function m_graves:debug/spawn_grave"}}, \
    {label:"Tell Coords of Last Death", width:200, action:{type:"run_command", command:"/function m_graves:debug/tell_coords"}}, \
    {label:"Spawn Last Dropped Inventory", width:200, action:{type:"run_command", command:"/function m_graves:debug/spawn_last_dropped_inventory"}}, \
  ], \
  exit_action: {label:"Back", width:120, action:{type:"run_command", command:"/trigger mp.settings set 10"}}\
}
