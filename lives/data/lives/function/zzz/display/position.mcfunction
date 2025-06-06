data modify storage lives:data macro.pos_x set from storage lives:data temp_display.position[0]
data modify storage lives:data macro.pos_y set from storage lives:data temp_display.position[1]
data modify storage lives:data macro.pos_z set from storage lives:data temp_display.position[2]
data modify storage lives:data macro.rotation_yaw set from storage lives:data temp_display.rotation[0]
data modify storage lives:data macro.rotation_pitch set from storage lives:data temp_display.rotation[1]

data modify storage lives:data macro.translation_x set from storage lives:data temp_display.translation[0]
data modify storage lives:data macro.translation_y set from storage lives:data temp_display.translation[1]
data modify storage lives:data macro.translation_z set from storage lives:data temp_display.translation[2]

execute if data storage lives:data macro{pos_x:"~"} run execute store result storage lives:data macro.pos_x double 0.0009765625 run data get entity @s Pos[0] 1024
execute if data storage lives:data macro{pos_y:"~"} run execute store result storage lives:data macro.pos_y double 0.0009765625 run data get entity @s Pos[1] 1024
execute if data storage lives:data macro{pos_z:"~"} run execute store result storage lives:data macro.pos_z double 0.0009765625 run data get entity @s Pos[2] 1024
execute if data storage lives:data macro{rotation_yaw:"~"} run execute store result storage lives:data macro.rotation_yaw double 0.0009765625 run data get entity @p Rotation[0] 1024
execute if data storage lives:data macro{rotation_pitch:"~"} run execute store result storage lives:data macro.rotation_pitch double 0.0009765625 run data get entity @p Rotation[1] 1024