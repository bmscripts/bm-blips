PL = {}

-- Enable debug logging
PL.Debug = false

-- Enable/disable blip types
PL.ActivateSingle = true
PL.ActivateRadius = false

--============================--
--  SINGLE BLIPS
--============================--

PL.BlipsSingle = {
    {
        name = "Police Station",
        coords = vec3(441.2, -981.9, 30.6),
        sprite = 60,
        color = 29,
        scale = 0.9,
        shortRange = true,

        info = {
            title = "Mission Row PD",
            verified = true,
            rp = "+250 RP",
            money = "$5000",

            image = {
                dict = "mpinventory",
                tex = "mp_specitem_ped"
            },

            entries = {
                { type = "header", left = "Services", right = "Test 1234" },
                { type = "text", left = "Open Hours", right = "24/7" },
                { type = "name", left = "Chief", right = "J. Walker" },
                { type = "icon", left = "Security", right = "High", icon = 1, color = 2, checked = true },
            }
        }
    }
}

--============================--
--  RADIUS BLIPS
--============================--

PL.BlipsRadius = {
    -- Example:
    -- {
    --     coords = vec3(200.0, 200.0, 30.0),
    --     radius = 150.0,
    --     sprite = 1,
    --     color = 1,
    --     transparency = 128
    -- }
}

--[[ 
[1] = {
        name = "Benny's Motorworks",
        sprite = 446,
        color = 0,
        scale = 0.8,
        coords = vec3(-211.82, -1324.06, 30.37)
    },
    [2] = {
        name = "Los Santos Customs",
        sprite = 446,
        color = 0,
        scale = 0.8,
        coords = vec3(-337.86, -136.29, 38.49)
    },
    [3] = {
        name = "Los Santos Customs",
        sprite = 446,
        color = 0,
        scale = 0.8,
        coords = vec3(731.78, -1088.63, 21.65)
    },
    [4] = {
        name = "Los Santos Customs",
        sprite = 446,
        color = 0,
        scale = 0.8,
        coords = vec3(-1155.5, -2006.78, 12.66)
    },
    [5] = {
        name = "Pegasus Customs",
        sprite = 446,
        color = 0,
        scale = 0.8,
        coords = vec3(-1650.75, -3140.37, 13.47)
    },
}
]]--
