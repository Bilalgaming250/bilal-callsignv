local QBCore = exports[Config.ExportName]:GetCoreObject()

function IsCorrectJob(job)
    if Config.Jobs[job] then
        return true
    end     
end    

QBCore.Commands.Add(Config.CommandName, Config.CommandDescription, {}, false, function(source, args)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    local number = tonumber(args[1])

    if IsCorrectJob(Player.PlayerData.job.name) then 
        if Config.UseMenu then 
            TriggerClientEvent('bilal-callsignv:callsignmenu', src)    
        else
            if args[1] ~= nil then
                TriggerClientEvent('bilal-callsignv:setcallsign', src, number)
            else 
                if Config.Notify == 'qb-notify' then 
                    TriggerClientEvent('QBCore:Notify', src, Config.Text.invalidArg1, "error")
                else 
                    TriggerClientEvent('okokNotify:Alert', src, 'ERROR', Config.Text.invalidArg1, 3000, 'error')
                end
            end    
        end 
    else 
        if Config.Notify == 'qb-notify' then
            TriggerClientEvent('QBCore:Notify', src, Config.Text.wrongJob, "error")
        elseif Config.Notify == 'okokNotify' then 
            TriggerClientEvent('okokNotify:Alert', src, 'ERROR', Config.Text.wrongJob, 3000, 'error')
        end    
    end       
end)
    