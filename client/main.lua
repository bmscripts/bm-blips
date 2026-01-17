--========================================================--
--  BM Scripts - Blip System (with Blip Info Integration) --
--========================================================--

local function Debug(msg)
    if BM.Debug then
        print("^3[BM-BLIPS DEBUG]^7 " .. msg)
    end
end

CreateThread(function()
    Debug("Blip generation started")
    generateBlips()
    Debug("Blip generation completed")
end)

--========================================================--
--  MAIN BLIP GENERATION
--========================================================--

function generateBlips()
    --============================--
    --  SINGLE BLIPS
    --============================--
    if BM.ActivateSingle and BM.BlipsSingle then
        for i, v in ipairs(BM.BlipsSingle) do
            if not v.coords then
                Debug(("Blip %s missing coords"):format(i))
            else
                local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)

                SetBlipDisplay(blip, 4)
                SetBlipSprite(blip, v.sprite or 1)
                SetBlipColour(blip, v.color or 0)
                SetBlipScale(blip, v.scale or 0.8)
                SetBlipAsShortRange(blip, v.shortRange ~= false)

                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(v.name or "Unknown")
                EndTextCommandSetBlipName(blip)

                Debug(("Created blip '%s' at %s"):format(v.name, v.coords))

                --========================================--
                --  APPLY BLIP INFO
                --========================================--
                if v.info then
                    Debug(("Applying blip_info to '%s'"):format(v.name))

                    exports['blip_info']:SetBlipInfoTitle(
                        blip,
                        v.info.title or "",
                        v.info.verified or false
                    )

                    if v.info.image then
                        exports['blip_info']:SetBlipInfoImage(
                            blip,
                            v.info.image.txd or "",
                            v.info.image.txn or ""
                        )
                    end

                    exports['blip_info']:SetBlipInfoEconomy(
                        blip,
                        v.info.rp or "",
                        v.info.money or ""
                    )

                    if v.info.entries then
                        for _, entry in ipairs(v.info.entries) do
                            if entry.type == "text" then
                                exports['blip_info']:AddBlipInfoText(blip, entry.left, entry.right)

                            elseif entry.type == "name" then
                                exports['blip_info']:AddBlipInfoName(blip, entry.left, entry.right)

                            elseif entry.type == "header" then
                                exports['blip_info']:AddBlipInfoHeader(blip, entry.left, entry.right)

                            elseif entry.type == "icon" then
                                exports['blip_info']:AddBlipInfoIcon(
                                    blip,
                                    entry.left,
                                    entry.right,
                                    entry.icon or 0,
                                    entry.color or 0,
                                    entry.checked or false
                                )
                            else
                                Debug(("Invalid entry type '%s' in blip '%s'"):format(entry.type, v.name))
                            end
                        end
                    end
                end
            end
        end
    end

    --============================--
    --  RADIUS BLIPS
    --============================--
    if BM.ActivateRadius and BM.BlipsRadius then
        for _, v in ipairs(BM.BlipsRadius) do
            local blip = AddBlipForRadius(v.coords.x, v.coords.y, v.coords.z, v.radius)

            SetBlipColour(blip, v.color or 1)
            SetBlipAlpha(blip, v.transparency or 128)

            Debug(("Created radius blip at %s with radius %s"):format(v.coords, v.radius))
        end
    end
end
