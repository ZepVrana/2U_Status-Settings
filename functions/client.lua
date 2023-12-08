Notify_Client = function(text, type)
    TriggerEvent("pNotify:SendNotification", {
        text = text,
        type = type,
        timeout = 3000,
        layout = "topRight",
        queue = "global"
    })
end

Progressbar = function(text, time)
    exports['mythic_progbar']:Progress({
        name = "2U_Status",
        duration = time,
        label = text,
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }
    })
end

CancelProgressbar = function()
    TriggerEvent("mythic_progbar:client:cancel")
end