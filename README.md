# Comp Player Statues

I got tired of using datapacks from other people for player statues, so I made one for myself.

The "Comp Player Statues" folder in this repository functions as a datapack that can be dropped into a Minecraft world's "datapacks" folder. Once placed into the datapacks folder and once the world is reloaded, it will be ready for use.

## Documentation

Every player statue requires a model and texture. See the example resourcepack!

To create a statue, first make a loot table for it, then use `/loot spawn ...` to deploy it. See the example loot tables. To remove a statue, remove the loot table and then run an update. Loot tables refresh on datapack reload.

Update (uses the same loot table as creating): `/function player_statues:api/update {namespace:<namespace>, id:<id>}`

Update all (no parameters, despawns and resummons all statues): `/function player_statues:api/update_all`

Statue data is stored in `player_statues:data statues`, which includes UUIDs for individual model parts. Currently, updating a statue refreshes the UUIDs, and should be used for resetting a statue rather than animations.

## Credits

**Compsogbrickus** - Datapack Creator. I wrote pretty much everything here!

**Gibbsly** - Simple UUID Converter library, which is found at <https://github.com/gibbsly/gu>

**Additional Credits** - Inspiration from various player models/statues datapacks, notably one by MelonBP.