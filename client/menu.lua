local QBCore = exports['qb-core']:GetCoreObject()

-- target
Citizen.CreateThread(function()
	
	-- dj booth
	exports['qb-target']:AddBoxZone("BahamaDJ", vector3(-1382.09, -616.71, 31.5), 1.4, 1, {
		name = "Bahama DJ",
		heading = 35,
		debugPoly = false,
		minZ=31.5,
		maxZ=32.1,
		}, {
			options = {
				{  
					type = "client",
					event = "rsg_bahamadj:client:djmenu",
					icon = "fas fa-music",
					label = "DJ Menu",
					--job = "cayobeachbar",
				},
			},
		distance = 1.5
	})
	
end)

RegisterNetEvent('rsg_bahamadj:client:djmenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "💿 | DJ Menu",
			isMenuHeader = true,
        },
        {
            header = "🎶 | Play a song",
            txt = "Enter a youtube URL",
            params = {
                event = "rsg_bahamadj:client:musicMenu"
            }
        },
		{
            header = "⏸️ | Pause Music",
            txt = "Pause currently playing music",
            params = {
                event = "rsg_bahamadj:client:pauseMusic"
            }
        },
		{
            header = "▶️ | Resume Music",
            txt = "Resume playing paused music",
            params = {
                event = "rsg_bahamadj:client:resumeMusic"
            }
        },
		{
            header = "🔈 | Change Volume",
            txt = "Adjust the volume of the music",
            params = {
                event = "rsg_bahamadj:client:changeVolume"
            }
        },
		{
            header = "❌ | Turn off music",
            txt = "Stop the music & choose a new song",
            params = {
                event = "rsg_bahamadj:client:stopMusic"
            }
        },
        {
            header = "Close Menu",
            txt = '',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)