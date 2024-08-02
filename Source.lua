print("Loaded! Rspy Modified for celery!!")

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function sendNotification(title, message, duration)
    local success, errorMessage = pcall(function()
        StarterGui:SetNotification({
            Title = title,
            Text = message,
            --Icon = "rbxassetid://123456789", 
            Duration = duration, 
        })
    end)
    if not success then
        warn("Error sending notification: ".. errorMessage)
    end
end

local function kickPlayer(reason)
    local success, errorMessage = pcall(function()
        player:Kick(reason)
    end)
    if not success then
        warn("Error loading Rspy Modified".. errorMessage)
    end
end

sendNotification("Rspy UwU", "This might take long, i havent fix the performance issue yet ;-;", 5)
task.wait(3)
kickPlayer("Heheheheheheh, logged")
