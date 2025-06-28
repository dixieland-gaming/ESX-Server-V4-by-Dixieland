Citizen.CreateThread(function()
    while true do
        if NetworkIsPlayerActive(PlayerId()) then
            ShutdownLoadingScreen()
            break
        end
        Citizen.Wait(100)
    end
end) 