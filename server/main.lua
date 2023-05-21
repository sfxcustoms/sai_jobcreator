MySQL.ready(function()
    print('[^2INFO^7] ^5' .. GetCurrentResourceName() .. '^0 - ^3SFX Customs Originals^0 - ^2Module Initialized^0')
end)

RegisterCommand('jobc', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xPlayerGroup = xPlayer.getGroup()
    
    if xPlayerGroup == 'admin' then
        xPlayer.triggerEvent('sai_jobcreator:CreatorMenu', xPlayerGroup)
    end
end)

RegisterNetEvent('sai_jobcreator:CreateJob')
AddEventHandler('sai_jobcreator:CreateJob', function(CreatorData)
    local xPlayer = ESX.GetPlayerFromId(source)

    MySQL.insert('INSERT IGNORE INTO jobs (name, label) VALUES (?, ?)', {CreatorData[1], CreatorData[2]}, function(id)
        print(CreatorData[2] .. ' successfully created with x' .. CreatorData[3] .. ' ranks')
    end)

    for i = 1, CreatorData[3] do
        MySQL.insert('INSERT INTO job_grades (job_name, grade, name, label) VALUES (?, ?, ?, ?)', {CreatorData[1], i, CreatorData[1] .. i, CreatorData[2] .. ' - ' .. i}, function(id)
            print(CreatorData[1] .. i .. ' successfully created on job grades')
        end)
    end
end)

----------------------------------------------------------------------------------------------
        -- DO NOT TOUCH ANYTHING FROM HERE, WHEN YOU DO SUPPORT WILL BE REVOKED --
----------------------------------------------------------------------------------------------
                --   SFX CUSTOMS ORIGINALS - JOB CREATOR SYSTEM    --
                --     DISCORD: https://discord.gg/5ZrJBrKwpG         --
----------------------------------------------------------------------------------------------
