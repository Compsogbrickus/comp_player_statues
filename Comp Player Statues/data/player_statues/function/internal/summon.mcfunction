$data merge entity @s {Tags:["player_statue.object", "player_statue.$(id)"]}

$execute if data storage player_statues:data macro{id:"interaction"} run data merge entity @s {Tags:["player_statue.interaction"], width:$(width), height:$(height), response:$(response)}
$execute unless data storage player_statues:data macro{id:"interaction"} run data merge entity @s {Tags:["player_statue.display"], item_display:"fixed", item:{id:"stick",components:{item_model:"player_statues:$(texture)/$(id)"}},transformation:{right_rotation:$(right_rotation),scale:$(scale),left_rotation:$(left_rotation),translation:$(translation)}}

$tp @s $(pos_x) $(pos_y) $(pos_z) $(rotation_yaw) $(rotation_pitch)
$execute if data storage player_statues:data macro{id:"interaction"} at @s run tp @s ^$(translation_x) ^$(translation_y) ^$(translation_z)

function player_statues:internal/store_uuid with storage player_statues:data score