Notify_Server = function(source, text, type)
    TriggerClientEvent("pNotify:SendNotification", source, {
        text = text,
        type = type,
        timeout = 3000,
        layout = "topRight",
        queue = "global"
    })
end