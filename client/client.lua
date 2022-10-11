local QBCore = exports['qb-core']:GetCoreObject()

-- play music
RegisterNetEvent('rsg_bahamadj:client:playMusic', function()
    exports['qb-menu']:openMenu(musicMenu)
end)

RegisterNetEvent('rsg_bahamadj:client:musicMenu', function()
    local dialog = exports['qb-input']:ShowInput({
        header = 'Song Selection',
        submitText = "Submit",
        inputs = {
            {
                type = 'text',
                isRequired = true,
                name = 'song',
                text = 'YouTube URL'
            }
        }
    })
    if dialog then
        if not dialog.song then return end
        TriggerServerEvent('rsg_bahamadj:server:playMusic', dialog.song, 'bahama')
    end
end)

-- change volume
RegisterNetEvent('rsg_bahamadj:client:changeVolume', function()
    local dialog = exports['qb-input']:ShowInput({
        header = 'Music Volume',
        submitText = "Submit",
        inputs = {
            {
                type = 'text', -- number doesn't accept decimals??
                isRequired = true,
                name = 'volume',
                text = 'Min: 0.01 - Max: 1'
            }
        }
    })
    if dialog then
        if not dialog.volume then return end
        TriggerServerEvent('rsg_bahamadj:server:changeVolume', dialog.volume, 'bahama')
    end
end)

-- pause music
RegisterNetEvent('rsg_bahamadj:client:pauseMusic', function()
    TriggerServerEvent('rsg_bahamadj:server:pauseMusic', 'bahama')
end)

-- resume music
RegisterNetEvent('rsg_bahamadj:client:resumeMusic', function()
    TriggerServerEvent('rsg_bahamadj:server:resumeMusic', 'bahama')
end)

-- stop music
RegisterNetEvent('rsg_bahamadj:client:stopMusic', function()
    TriggerServerEvent('rsg_bahamadj:server:stopMusic', 'bahama')
end)