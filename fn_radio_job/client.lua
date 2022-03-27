local radioname = "RADIO_22_DLC_BATTLE_MIX1_RADIO" -- radio to replace with your own | pastebin.com/Kj9t38KF <-- full list of radio names

Citizen.CreateThread(function()
    local wasenabled = false
    while true do
        Citizen.Wait(100)
        SetRadioTrack(radioname, 255)
        if IsPlayerVehicleRadioEnabled() and GetPlayerRadioStationName()==radioname and not wasenabled then
            SendNuiMessage(json.encode({type="enable",state=true}))
            SetAudioFlag("FrontendRadioDisabled", true)
        elseif (not IsPlayerVehicleRadioEnabled() or GetPlayerRadioStationName()~=radioname) and wasenabled then
            SendNuiMessage(json.encode({type="enable",state=false}))
            SetAudioFlag("FrontendRadioDisabled", false)
        end
        wasenabled = IsPlayerVehicleRadioEnabled() and GetPlayerRadioStationName()==radioname
    end
end)