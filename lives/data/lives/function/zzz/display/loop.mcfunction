data modify storage lives:data displays[0].elements append value {end:1b}
execute unless data storage lives:data displays[0].elements[0].end run function lives:zzz/display/elements/summon_loop
data remove storage lives:data displays[0].elements[{end:1b}]

data modify storage lives:data displays append from storage lives:data displays[0]
data remove storage lives:data displays[0]

execute unless data storage lives:data displays[0].end run function lives:zzz/display/loop