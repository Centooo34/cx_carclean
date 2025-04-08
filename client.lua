ESX = exports["es_extended"]:getSharedObject()
local Config = {}

local function cleanVehicle(car)

        if lib.progressBar({
            duration = Config.Duration,
            label = Config.Label,
            useWhileDead = false,
            canCancel = false,
            allowRagdoll = false,
            allowSwimming = false,
            allowCuffed = false,
            allowFalling = false,
            disable = {
                car = true,
                move = true,
                combat = true
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
        }) then
            SetVehicleDirtLevel(car, 0.0)
        end
end

exports.ox_target:addGlobalVehicle({
    distance = 1.5,
    icon = "fas fa-water",
    label = Config.LabelTarget,
    items = Config.RequiredItem,
    onSelect = function(data)
        cleanVehicle(data.entity)
    end
})
