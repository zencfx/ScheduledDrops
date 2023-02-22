local framework = nil 
TriggerEvent('esx:getSharedObject', function(obj) framework = obj end)

-- local framework = exports['zen-core']:getSharedObject() -- This is for legacy, Remove Lines 1,2

-----------------------------------------------------------------------

ScheduledDrops = {}
ScheduledDrops.Drops = { -- The Time Must Be Same As Your Hostings Timezone!
    [1] = {
        time = "08:30:00",
        label = "Comon Key", 
        item = 'common_key', 
        amount = '1' 
    },
    [2] = {
        time = "20:30:00",
        label = "Rare Key", 
        item = 'rare_key', 
        amount = '1' 
    },
}

-- Announce ---------------------------------------

ScheduledDrops.Announce = true
function AnnounceDrop(Item, Amount) 
    TriggerClientEvent('chat:addMessage', -1, { -- Can Edit Announce Template
        template = '<div style="padding: 0.40vw; margin: -0.1vw; background-color: rgba(17, 17, 17, 0.753); border-radius: 7px;  border-left: 4.5px solid rgb(176, 0, 0); width = auto; "><text style="position: sticky;">^1[ Scheduled Drops ]^7 : '..Amount..' '..Item..' Has Been Given To All Players.</text></div>'
    })
end


-- Settings ---------------------------------------

ScheduledDrops.WebhookLogs = false -- Sends A Message To Discord When Item Drops!
ScheduledDrops.Webhook = "" -- Discord Channel WebHook
    
ScheduledDrops.Debug = false -- Test Out The AnnounceDrop Text By Using The Command "dropsannounce". [ DOESNT ACTUALLY GIVE ANY ITEMS ]
ScheduledDrops.VersionCheck = true -- Lets You Know If There Is A Update For The Script. [ SHOWS UP IN CONSOLE ]


-- Functions --------------------------------------

getOnlinePlayers = function()
    return framework.GetPlayers()
end

getPlayer = function(source)
    return framework.GetPlayerFromId(source)    
end
