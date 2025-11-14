$dialog show @s {\
  type:"confirmation", title:"Graves General Settings", columns:1, \
  inputs: [\
    {type:"boolean", key:"toggle", initial:$(toggle), label:"Graves................................................................................."}, \
    {type:"boolean", key:"despawn", initial:$(despawn), label:"Grave Despawn............................................................."}, \
    {type:"number_range", key:"despawn_minutes", width:200, initial:$(despawn_minutes), label:"Despawn Minutes", start:0, end:59, step:1}, \
    {type:"number_range", key:"despawn_hours", width:200, initial:$(despawn_hours), label:"Despawn Hours", start:0, end:100, step:1}, \
    {type:"boolean", key:"void_recovery", initial:$(void_recovery), label:"Void Recovery..............................................................."}, \
    {type:"number_range", key:"void_recovery_dist", width:200, initial:$(void_recovery_dist), label:"Void Recovery Distance", start:4, end:300, step:1}, \
    {type:"boolean", key:"locked", initial:$(locked), label:"Locked graves............................................................."}, \
    {type:"boolean", key:"key", initial:$(key), label:"Keys.............................................................................."}, \
    {type:"boolean", key:"auto_unlock", initial:$(auto_unlock), label:"Auto Unlock............................................................."}, \
    {type:"number_range", key:"unlock_minutes", width:200, initial:$(unlock_minutes), label:"Auto Unlock Minutes", start:0, end:59, step:1}, \
    {type:"number_range", key:"unlock_hours", width:200, initial:$(unlock_hours), label:"Auto Unlock Hours", start:0, end:100, step:1}, \
    {type:"boolean", key:"death_coords", initial:$(death_coords), label:"Show Death Coordinates......................................."}, \
    {type:"boolean", key:"compass", initial:$(compass), label:"Death Locator Compass........................................"}, \
  ], \
  yes:{label:"Save", tooltip:"Save Changes", width:119, action:{type:"dynamic/run_command", template:"$(template)"}}, \
  no:{label:"Back", tooltip:"Discard Unsaved Changes", width:119, action:{type:"run_command", command:"/trigger mp.settings set 10"}}\
}
