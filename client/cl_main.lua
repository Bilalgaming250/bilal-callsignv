local QBCore = exports[Config.ExportName]:GetCoreObject()

RegisterNetEvent('bilal-callsignv:callsignmenu', function()
    local dialog = exports['qb-input']:ShowInput({
        header = Config.Text.menuheader,
        submitText = Config.Text.menuSumbit,
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'callsign',
                text = Config.Text.menuInputPlaceHolder
            }
        }
    })
    if dialog then
        if not dialog.callsign then return end
        local number = dialog.callsign
        TriggerEvent('bilal-callsignv:setcallsign', number)   
    end
end)

RegisterNetEvent('bilal-callsignv:setcallsign', function(callsign)
    if not callsign then 
        return
    end     

    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    
    if IsPedInAnyVehicle(ped, false) then
        if callsign ~= nil then 
            local numcallsign = tostring(callsign)
            local number = {}
            for i in string.gmatch(numcallsign, "%d") do 
                table.insert(number, i)
            end
    
            local num1 = tonumber(number[1])
            local num2 = tonumber(number[2])
            local num3 = tonumber(number[3])

            if Config.ProgressBar then 
                QBCore.Functions.Progressbar('callsignv', Config.Text.progressbar, 4000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true
                    }, {}, {}, {}, function()
                        SetVehicleModKit(veh, 0)
                        SetVehicleMod(veh, Config.Num1ModIndex, num1, false)
                        SetVehicleMod(veh, Config.Num2ModIndex, num2, false)
                        SetVehicleMod(veh, Config.Num3ModIndex, num3, false)
                    end, function()
                        return
                end)
            else 
                SetVehicleModKit(veh, 0)
                SetVehicleMod(veh, Config.Num1ModIndex, num1, false)
                SetVehicleMod(veh, Config.Num2ModIndex, num2, false)
                SetVehicleMod(veh, Config.Num3ModIndex, num3, false)
            end
            
            if Config.Notify == 'qb-notify' then 
                TriggerEvent('QBCore:Notify', Config.Text.CallsignUpdateTo ..numcallsign, "success")
            elseif Config.Notify == 'okokNotify' then
                exports['okokNotify']:Alert('SUCCESS', Config.Text.CallsignUpdateTo, 3000, 'success')
            end
        end
    else 
        if Config.Notify == 'qb-notify' then 
            TriggerEvent('QBCore:Notify', Config.Text.notInVeh, "error")
        elseif Config.Notify == 'okokNotify' then
            exports['okokNotify']:Alert('ERROR', Config.Text.notInVeh, 3000, 'error')
        end  
    end        
end)
