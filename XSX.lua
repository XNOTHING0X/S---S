if _G.XVX then
    return
end
_G.XVX = true
local player = game:GetService("Players").LocalPlayer
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "HELLO " .. player.DisplayName,
    Text = "✅",
    Duration = 10,
})
