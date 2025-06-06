$data merge entity @s $(data)
execute if data storage lives:data macro.item_display_id run function lives:zzz/display/elements/summon/item_display/set with storage lives:data macro

$tp @s $(pos_x) $(pos_y) $(pos_z) $(rotation_yaw) $(rotation_pitch)

$tp @s ^$(translation_x) ^$(translation_y) ^$(translation_z)

function lives:zzz/display/elements/uuid/store with storage lives:data macro