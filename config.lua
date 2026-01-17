BM = {}

BM.Debug = false             -- Enable/Disable debug logging

BM.ActivateSingle = true     -- Enable/Disable BlipsSingle
BM.ActivateRadius = true     -- Enable/Disable BlipsRadius

--============================--
--  SINGLE BLIPS
--============================--

BM.BlipsSingle = { -- Find blips sprites and colours here: https://docs.fivem.net/docs/game-references/blips/
---------- EXAMPLE ----------------------------------------------------------------------------------------------------
    -- {
    --     name = "Example Blip",
    --     coords = vec3(0.0, 0.0, 0.0),
    --     sprite = 0,
    --     color = 0,
    --     scale = 1.0,
    --     shortRange = true,

    --     info = {
    --         title = "Example Title",
    --         verified = true,
    --         rp = "+400",
    --         money = "$1500",

    --         image = {
    --             dict = "mpinventory",
    --             tex = "mp_specitem_ped"
    --         },

    --         entries = {
    --             { type = "header", left = "Left Header", right = "Right Header" },
    --             { type = "text", left = "Left Text", right = "Right Text" },
    --             { type = "name", left = "Left Name", right = "Right Name" },
    --             { type = "icon", left = "Left Icon", right = "Right Icon", icon = 0, color = 1, checked = true },
    --         }
    --     }
    -- },
------------------------------------------------------------------------------------------------------------------------
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
}

--============================--
--  RADIUS BLIPS
--============================--

BM.BlipsRadius = { -- Find blips sprites and colours here: https://docs.fivem.net/docs/game-references/blips/
---------- EXAMPLE ----------------------------------------------------
    -- {
    --     coords = vec3(0.0, 0.0, 0.0), -- Radius Location
    --     radius = 200.0,               -- Radius Size
    --     color = 0,                    -- Radius Colour
    --     transparency = 128            -- Radius Transparency
    -- }
-----------------------------------------------------------------------
    { -- Vinewood Sign
        coords = vec3(711.38, 1198.0, 348.52),
        radius = 200.0,
        color = 0,
        transparency = 128
    }
}
