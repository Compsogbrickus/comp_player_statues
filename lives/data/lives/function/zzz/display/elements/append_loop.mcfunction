data modify storage lives:data temp_display.elements append from storage lives:data macro.new_elements[0]

data remove storage lives:data macro.new_elements[0]

execute unless data storage lives:data macro.new_elements[0].end run function lives:zzz/display/elements/append