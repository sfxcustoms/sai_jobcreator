RegisterNetEvent('sai_jobcreator:CreatorMenu')
AddEventHandler('sai_jobcreator:CreatorMenu', function(xPlayerGroup)
    if xPlayerGroup then
        local Input = lib.inputDialog('Job Creator', {
            {type = 'input', label = 'Job Name', description = 'Please enter job name in lower case only', required = true},
            {type = 'input', label = 'Job Label', description = 'Please enter job label in Proper Format', required = true},
            {type = 'number', label = 'Job Rank Count', description = 'Enter how many ranks it will create', required = true, icon = 'hashtag', default = 1, min = 1},
        })

        TriggerServerEvent('sai_jobcreator:CreateJob', Input)
    end
end)

----------------------------------------------------------------------------------------------
        -- DO NOT TOUCH ANYTHING FROM HERE, WHEN YOU DO SUPPORT WILL BE REVOKED --
----------------------------------------------------------------------------------------------
                --   SFX CUSTOMS ORIGINALS - JOB CREATOR SYSTEM    --
                --     DISCORD: https://discord.gg/5ZrJBrKwpG         --
----------------------------------------------------------------------------------------------
