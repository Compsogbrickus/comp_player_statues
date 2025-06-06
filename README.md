# L.I.V.E.S.
Loot Interfacing Variable Entity System

D.I.E.S. if it learned new tricks! Creates fully customizable linked displays and interactions from loot tables.

The "lives" folder in this repository functions as a datapack that can be dropped into a Minecraft world's "datapacks" folder. Once placed into the datapacks folder and once the world is reloaded, it will be ready for use.

## Documentation

To create a display, first make a loot table for it, then use `/loot spawn ...` to deploy it. See the example loot tables. Loot tables refresh on datapack reload.

Update (uses the same loot table as creating): `/function lives:update {id:<id>}`

Remove: `/function lives:remove {id:<id>}`

Update all (no parameters, despawns and resummons all displays): `/function lives:update_all`

Display data is stored in `lives:data displays`, which includes UUIDs for individual model parts. Currently, updating a display refreshes the UUIDs, and should be used for resetting rather than animations.

To report a bug or suggest a feature, use the Issues tracker on Github. Issues are forwarded to my email. For more detailed questions, you can reach me at compsogbrickus@gmail.com or on Discord as compsogbrickus.

## Credits

**Compsogbrickus** - Datapack Creator. I wrote pretty much everything here!

**Gibbsly** - Simple UUID Converter library, which is found at <https://github.com/gibbsly/gu>

**Additional Credits** - Inspiration from various datapacks, notably a player models/statues datapack by MelonBP, and D.I.E.S. by RockNRed.