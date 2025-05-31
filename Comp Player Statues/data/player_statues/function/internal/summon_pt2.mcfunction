$data merge entity @s $(data)
execute if data storage player_statues:data macro.item_display_id run function player_statues:internal/set_item_display_id with storage player_statues:data macro

$tp @s $(pos_x) $(pos_y) $(pos_z) $(rotation_yaw) $(rotation_pitch)

$tp @s ^$(translation_x) ^$(translation_y) ^$(translation_z)

function player_statues:internal/store_uuid with storage player_statues:data macro