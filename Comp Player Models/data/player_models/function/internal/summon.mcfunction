$data merge entity @s {Tags:["player_model.object", "player_model.$(id)"]}

$execute if data storage player_models:data macro{id:"interaction"} run data merge entity @s {Tags:["player_model.interaction"], width:$(width), height:$(height), response:$(response)}
$execute unless data storage player_models:data macro{id:"interaction"} run data merge entity @s {Tags:["player_model.display"], item_display:"fixed", item:{id:"stick",components:{item_model:"player_models:$(texture)/$(id)"}},transformation:{right_rotation:$(right_rotation),scale:$(scale),left_rotation:$(left_rotation),translation:$(translation)}}

$tp @s $(pos_x) $(pos_y) $(pos_z) $(rotation_yaw) $(rotation_pitch)
$execute if data storage player_models:data macro{id:"interaction"} at @s run tp @s ^$(translation_x) ^$(translation_y) ^$(translation_z)

function player_models:internal/store_uuid with storage player_models:data score