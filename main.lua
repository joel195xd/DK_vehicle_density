local defaultDensity = 1.0

RegisterCommand('setdensity', function(source, args, rawCommand)
    local density = tonumber(args[1])
    if density and density >= 0 and density <= 1.0 then
        SetVehicleDensityMultiplierThisFrame(density)
        SetRandomVehicleDensityMultiplierThisFrame(density)
        SetParkedVehicleDensityMultiplierThisFrame(density)
        SetScenarioVehicleDensityMultiplierThisFrame(density)
        
        TriggerEvent('chat:addMessage', {
            color = { 0, 255, 0},
            multiline = true,
            args = {"Sistema", "Densidad de vehículos establecida a " .. density}
        })
    else
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"Sistema", "Por favor, proporciona un valor entre 0.0 y 1.0."}
        })
    end
end, false)


AddEventHandler('onClientMapStart', function()
    SetVehicleDensityMultiplierThisFrame(defaultDensity)
    SetRandomVehicleDensityMultiplierThisFrame(defaultDensity)
    SetParkedVehicleDensityMultiplierThisFrame(defaultDensity)
    SetScenarioVehicleDensityMultiplierThisFrame(defaultDensity)
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) 
        SetVehicleDensityMultiplierThisFrame(defaultDensity)
        SetRandomVehicleDensityMultiplierThisFrame(defaultDensity)
        SetParkedVehicleDensityMultiplierThisFrame(defaultDensity)
        SetScenarioVehicleDensityMultiplierThisFrame(defaultDensity)
    end
end)
