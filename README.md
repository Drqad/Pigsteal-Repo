# PigstealWeapons Resource Pack

This resource pack adds custom textures for all PigstealWeapons items in Minecraft 1.21.10.

## Installation

1. Copy the `PigstealWeapons-ResourcePack` folder to your Minecraft resource packs directory:
   - Windows: `%appdata%\.minecraft\resourcepacks\`
   - macOS: `~/Library/Application Support/minecraft/resourcepacks/`
   - Linux: `~/.minecraft/resourcepacks/`

2. In Minecraft, go to Options → Resource Packs
3. Find "Custom textures for PigstealWeapons items" and click the arrow to move it to "Selected"
4. Click "Done"

## Current Status

Currently, all weapons are using **2x scaled vanilla textures as placeholders** to verify the system works. Each custom weapon will appear as an enlarged version of its base item:

- **Diamond Swords (2x size)**: DashSword, BloomSword, WaneSword, FireblastSword, LightningSword, SpiderSword, GiantSword, LightSword, MagicSword
- **Bow (2x size)**: BlazeBow
- **Golden Helmet (2x size)**: Crown
- **Shield (2x size)**: MirrorShield
- **Goat Horn (2x size)**: WardenHorn
- **Heart of the Sea (2x size)**: MythicalOrb
- **Milk Bucket (2x size)**: InfiniteMilk
- **Crossbow (2x size)**: GravityGun

## Adding Custom Textures

To replace the placeholders with your own custom textures:

1. Create 16x16 PNG texture files for each weapon
2. Save them in: `assets/minecraft/textures/item/`
3. Name them exactly as follows:
   - `dashsword.png`
   - `bloomsword.png`
   - `wanesword.png`
   - `fireblastsword.png`
   - `blazebow.png`
   - `crown.png`
   - `lightningsword.png`
   - `mirrorshield.png`
   - `wardenhorn.png`
   - `spidersword.png`
   - `giantsword.png`
   - `mythicalorb.png`
   - `infinitemilk.png`
   - `lightsword.png`
   - `magicsword.png`
   - `gravitygun.png`

4. Update each weapon's model file in `assets/minecraft/models/item/` to reference the new texture:
   - Change `"layer0": "minecraft:item/diamond_sword"` (or other base item)
   - To `"layer0": "minecraft:item/weaponname"` (e.g., `"minecraft:item/dashsword"`)

5. Adjust the `"scale"` values in the display section from `[2, 2, 2]` to `[1, 1, 1]` for normal size (or customize as needed)

## Custom Model Data IDs

Each weapon uses a specific custom_model_data value:

| Weapon | ID | Base Item |
|--------|-----|-----------|
| DashSword | 1001 | Diamond Sword |
| BloomSword | 1002 | Diamond Sword |
| WaneSword | 1003 | Diamond Sword |
| FireblastSword | 1004 | Diamond Sword |
| BlazeBow | 1005 | Bow |
| Crown | 1006 | Golden Helmet |
| LightningSword | 1007 | Diamond Sword |
| MirrorShield | 1008 | Shield |
| WardenHorn | 1009 | Goat Horn |
| SpiderSword | 1010 | Diamond Sword |
| GiantSword | 1011 | Diamond Sword |
| MythicalOrb | 1012 | Heart of the Sea |
| InfiniteMilk | 1013 | Milk Bucket |
| LightSword | 1014 | Diamond Sword |
| MagicSword | 1015 | Diamond Sword |
| GravityGun | 1016 | Crossbow |

## File Structure

```
PigstealWeapons-ResourcePack/
├── pack.mcmeta
├── README.md
└── assets/
    └── minecraft/
        ├── models/
        │   └── item/
        │       ├── diamond_sword.json (overrides for custom swords)
        │       ├── bow.json (override for blazebow)
        │       ├── golden_helmet.json (override for crown)
        │       ├── shield.json (override for mirrorshield)
        │       ├── goat_horn.json (override for wardenhorn)
        │       ├── heart_of_the_sea.json (override for mythicalorb)
        │       ├── milk_bucket.json (override for infinitemilk)
        │       ├── crossbow.json (override for gravitygun)
        │       ├── dashsword.json
        │       ├── bloomsword.json
        │       ├── wanesword.json
        │       ├── fireblastsword.json
        │       ├── blazebow.json
        │       ├── crown.json
        │       ├── lightningsword.json
        │       ├── mirrorshield.json
        │       ├── wardenhorn.json
        │       ├── spidersword.json
        │       ├── giantsword.json
        │       ├── mythicalorb.json
        │       ├── infinitemilk.json
        │       ├── lightsword.json
        │       ├── magicsword.json
        │       └── gravitygun.json
        └── textures/
            └── item/
                └── (add your 16x16 PNG files here)
```

## Notes

- Pack format: 72.0 (Minecraft 1.21.10)
- All weapons currently use 2x scale to verify the custom model data system is working
- Once you see the enlarged items in-game, you know the resource pack is active
- The plugin already applies the custom_model_data attribute, so no code changes are needed
