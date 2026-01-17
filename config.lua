PL = {}

Debug = false             -- Enable/Disable debug logging

ActivateSingle = true     -- Enable/Disable BlipsSingle
ActivateRadius = false    -- Enable/Disable BlipsRadius

--============================--
--  SINGLE BLIPS
--============================--

BlipsSingle = { -- https://docs.fivem.net/docs/game-references/blips/
---------- EXAMPLE ----------------------------------------------------------------------------------------------------
    -- {
    --     name = "Police Station",
    --     coords = vec3(441.2, -981.9, 30.6),
    --     sprite = 60,
    --     color = 29,
    --     scale = 0.9,
    --     shortRange = true,

    --     info = {
    --         title = "Mission Row PD",
    --         verified = true,
    --         rp = "+250 RP",
    --         money = "$5000",

    --         image = {
    --             txd = "mpinventory",
    --             txn = "mp_specitem_ped"
    --         },

    --         entries = {
    --             { type = "header", left = "Services", right = "" },
    --             { type = "text", left = "Open Hours", right = "24/7" },
    --             { type = "name", left = "Chief", right = "J. Walker" },
    --             { type = "icon", left = "Security", right = "High", icon = 1, color = 2, checked = true },
    --         }
    --     }
    -- },
------------------------------------------------------------------------------------------------------------------------
    
    {
        name = "Police Station",
        coords = vec3(441.2, -981.9, 30.6),
        sprite = 60,
        color = 29,
        scale = 0.9,
        shortRange = true,

        info = {
            title = "LSPD YUUR",

            image = {
                txd = "mpinventory",
                txn = "mp_specitem_ped"
            },
        }
    },
    {
        name = "Benny's Motorworks",
        coords = vec3(-211.82, -1324.06, 30.37),
        sprite = 446,
        color = 0,
        scale = 0.8,
        shortRange = true,
    },
    {
        name = "Los Santos Customs",
        coords = vec3(-337.86, -136.29, 38.49),
        sprite = 446,
        color = 0,
        scale = 0.8,
        shortRange = true,
    },
    {
        name = "Los Santos Customs",
        coords = vec3(731.78, -1088.63, 21.65),
        sprite = 446,
        color = 0,
        scale = 0.8,
        shortRange = true,
    },
    {
        name = "Los Santos Customs",
        coords = vec3(-1155.5, -2006.78, 12.66),
        sprite = 446,
        color = 0,
        scale = 0.8,
        shortRange = true,
    },
    {
        name = "Pegasus Customs",
        coords = vec3(-1650.75, -3140.37, 13.47),
        sprite = 446,
        color = 0,
        scale = 0.8,
        shortRange = true,
    }
}

--============================--
--  RADIUS BLIPS
--============================--

BlipsRadius = { -- https://docs.fivem.net/docs/game-references/blips/
---------- EXAMPLE ----------------------------------------------------
    -- { -- Mission Row Police Department
    --     coords = vec3(441.2, -981.9, 30.6), -- Radius Location
    --     radius = 50.0,                      -- Radius Size
    --     sprite = 1,                         -- Radius Icon
    --     color = 1,                          -- Radius Colour
    --     transparency = 128                  -- Radius Transparency
    -- }
-----------------------------------------------------------------------
}
