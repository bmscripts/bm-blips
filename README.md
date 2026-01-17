<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://i.ibb.co/qLqknnYd/BMScripts-Header.png">
  <source media="(prefers-color-scheme: light)" srcset="https://i.ibb.co/qLqknnYd/BMScripts-Header.png">
  <img alt="Shows the BM Scripts banner" src="https://i.ibb.co/qLqknnYd/BMScripts-Header.png">
</picture>

# BM Blips – Advanced Blip System (with Blip Info Support)

A lightweight, flexible, and highly configurable blip system for FiveM.  
Designed as a standalone script. This script allows you to create standard blips, radius blips, and detailed hover‑over information panels using the standalone [blip_info](https://github.com/glitchdetector/fivem-blip-info) resource.

Perfect for servers that want clean, professional map presentation.

---

## ✨ Features

- Create unlimited blips through a simple config
- Supports [blip_info](https://github.com/glitchdetector/fivem-blip-info) hover panels (title, image, icons, text, etc.)
- Radius blips included
- Debug mode for easy troubleshooting
- Fully optimized and low‑impact
- Clean, readable configuration structure
- No framework dependency (works with any server)

---

## 📦 Requirements

This script requires the standalone [blip_info](https://github.com/glitchdetector/fivem-blip-info) resource.

---

## 📁 Installation

1. Download this resource and [blip_info](https://github.com/glitchdetector/fivem-blip-info)
2. Extract and place both in your `resources` folder  
3. Add the following to your `server.cfg`:
```
ensure blip_info
ensure bm-blips
```
4. Configure your blips inside `config.lua`

> [blip_info](https://github.com/glitchdetector/fivem-blip-info) **MUST** be started before bm-blips else it won't work.

---

## ⚙️ Configuration

All blips are defined inside `config.lua`.

### Example Blip

```lua
{
    name = "Vinewood Sign (Example Blip)",
    coords = vec3(711.38, 1198.0, 348.52),
    sprite = 80,
    color = 0,
    scale = 1.0,
    shortRange = true,

    info = {
        title = "Vinewood Sign",
        verified = true,
        rp = "+400",
        money = "$1500",

        image = {
            dict = "mpinventory",
            tex = "mp_specitem_ped"
        },

        entries = {
            { type = "header", left = "Left Header", right = "Right Header" },
            { type = "text", left = "Left Text", right = "Right Text" },
            { type = "name", left = "Left Name", right = "Right Name" },
            { type = "icon", left = "Left Icon", right = "Right Icon", icon = 0, color = 1, checked = true },
        }
    }
},
```
### Example Radius

```lua
{ -- Vinewood Sign
    coords = vec3(711.38, 1198.0, 348.52), -- Radius Location
    radius = 200.0,                        -- Radius Size
    color = 0,                             -- Radius Colour
    transparency = 128                     -- Radius Transparency
}
```
> Blip icons and colours can be found here: https://docs.fivem.net/docs/game-references/blips/
---

# 📘 Blip Info Documentation

This document explains all available configuration options for the [blip_info](https://github.com/glitchdetector/fivem-blip-info) system used in bm-blips.  
All fields are optional, safe to omit, and validated at runtime. (if you removed one of the fields/entries it won't break the script)

---

## Keep Titles Short and Clear

Blip info titles should be concise and descriptive.

### ✔ Good
- `"Mission Row PD"`
- `"Hospital"`
- `"Gun Store"`

### ✘ Avoid
- `"This is the main police station located in Mission Row"`
- `"General Hospital and Emergency Services"`

Short titles prevent UI overflow and keep the panel clean.

---
## 🧩 Blip Info Fields

These fields control the header section of the [blip_info](https://github.com/glitchdetector/fivem-blip-info) panel.

| Field | Type | Description |
|-------|------|-------------|
| `title` | string | Title displayed at the top of the panel |
| `verified` | boolean | Shows Rockstar-style verified tick |
| `rp` | string | RP text displayed in the header |
| `money` | string | Money text displayed in the header |
| `image.dict` | string | Texture dictionary name |
| `image.tex` | string | Texture name inside the dictionary |
| `entries` | table | List of rows displayed under the header |

### Example
```lua
info = {
    title = "Mission Row PD",
    verified = true,
    rp = "+250 RP",
    money = "$5000",
    image = { dict = "mpinventory", tex = "mp_specitem_ped" },
    entries = { ... }
}
```

---

## 🧩 Full Configuration Table
The table below lists **every supported field** for the [blip_info](https://github.com/glitchdetector/fivem-blip-info) system, including  
top‑level info fields, entry types, and all sub‑options.
| Category | Field | Type | Description | Example |
|----------|--------|------|-------------|---------|
| **Info Header** | `title` | string | Title shown at the top of the panel | `"Mission Row PD"` |
| **Info Header** | `verified` | boolean | Shows Rockstar verified tick | `true` |
| **Info Header** | `rp` | string | RP text | `"+250 RP"` |
| **Info Header** | `money` | string | Money text | `"$5000"` |
| **Image** | `image.dict` | string | Texture dictionary name | `"mpinventory"` |
| **Image** | `image.tex` | string | Texture name inside dictionary | `"mp_specitem_ped"` |
| **Entries** | `entries` | table | List of entry rows | `{ ... }` |
| **Entry (All Types)** | `type` | string | Determines entry style | `"text"` |
| **Entry (All Types)** | `left` | string | Left‑side text | `"Open Hours"` |
| **Entry (All Types)** | `right` | string | Right‑side text | `"24/7"` |
| **Entry Type** | `"header"` | entry | Bold section header | `{ type = "header" }` |
| **Entry Type** | `"text"` | entry | Standard left/right text | `{ type = "text" }` |
| **Entry Type** | `"name"` | entry | Bold left text, right‑aligned value | `{ type = "name" }` |
| **Entry Type** | `"icon"` | entry | Icon + text row | `{ type = "icon" }` |
| **Icon Entry Only** | `icon` | number | Icon ID (0–6 recommended) | `1` |
| **Icon Entry Only** | `color` | number | HUD color ID (0–6 recommended) | `2` |
| **Icon Entry Only** | `checked` | boolean | Adds checkmark overlay | `true` |

---

## 🎨 Icon ID Reference

| Icon ID | Description |
|---------|-------------|
| 0 | None |
| 1 | Checkmark |
| 2 | Cross |
| 3 | Star |
| 4 | Shield |
| 5 | Warning Triangle |
| 6 | Info Icon |

---

## 🎨 HUD Color Reference

| Color ID | Color |
|----------|--------|
| 0 | White |
| 1 | Red |
| 2 | Green |
| 3 | Blue |
| 4 | Yellow |
| 5 | Orange |
| 6 | Purple |

---

## 🖼️ Image Dictionary Reference

| Dictionary | Example Textures |
|------------|------------------|
| `commonmenu` | `shop_gunclub_icon_b`, `shop_ammo_icon_b` |
| `mpinventory` | `mp_specitem_ped`, `mp_specitem_cash` |
| `shared` | `medal_gold`, `medal_silver` |
| `mphud` | `spectator_1`, `spectator_2` |
| `mpleaderboard` | `leaderboard_friends_icon` |
| `mpweaponsgang0` | `w_pi_pistol`, `w_sb_smg` |
---

## ❗ Blip Info Not Showing

### Possible Causes
- `blip_info` is not running
- The resource is loading before `blip_info`
- The `info` block is missing or malformed
- Entries contain invalid types or fields

### Solutions
- Ensure `blip_info` is started before this script:
```
ensure blip_info
ensure bm-blips
```
- Verify your blip has a valid `info = { ... }` block
- Enable Debug Mode to see validation warnings:
```lua
PL.Debug = true
```
---

# License

This script is free to use, modify, and adapt for personal or server use.

### ✔ You ARE allowed to:
- Use this script on any FiveM server  
- Modify the code for personal or server needs  
- Share modified versions with proper credit  
- Include it in server packs (with credit)

### ✘ You are NOT allowed to:
- Claim the script as your own  
- Remove credit to BM Scripts  
- Sell the script or any modified version of it  
- Repackage it as a paid product  

## Attribution Requirement
If you redistribute or modify this script, you must post credit to original creators.

## Credit
Credit to [glitchdetector](https://github.com/glitchdetector) for making [blip_info](https://github.com/glitchdetector/fivem-blip-info)
