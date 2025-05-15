wait (2)
local player = game:GetService("Players").LocalPlayer
local hasSent = false

if not hasSent then
        hasSent = true
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "",
        Text = "",
        Duration = 5.5,
    })
end
