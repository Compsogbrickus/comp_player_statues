function lives:zzz/display/elements/uuid/kill with storage lives:data displays[0].elements[0]

data modify storage lives:data displays[0].elements append from storage lives:data displays[0].elements[0]
data remove storage lives:data displays[0].elements[0]

execute unless data storage lives:data displays[0].elements[0].end run function lives:zzz/display/elements/kill_loop