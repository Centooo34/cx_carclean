RegisterNetEvent('cleanVehicle', function()
    local coords = GetEntityCoords(cache.ped)
    local includePlayerVehicle = false
    local auto = lib.getClosestVehicle(coords, 1.5, includePlayerVehicle)

    lib.progressBar({
    duration = 10000,
    label = 'Cleaning vehicle...', -- you can edit this
    useWhileDead = false,
    canCancel = false,
    disable = {
        car = true,
    },
    anim = {
        dict = 'amb@world_human_maid_clean@',
        clip = 'base'
    },
    prop = {
        model = "prop_rag_01",
        pos = vec3(0.1, 0.0, 0.0),      
        rot = vec3(0.0, 0.0, 0.0),
        bone = 57005 
    }
})


    SetVehicleDirtLevel(auto, 0.0)
end)

exports.ox_target:addGlobalVehicle({
    event = "cleanVehicle",
    distance = 1.5,
    icon = "fas fa-water",
    label = "Clean vehicle"
})

