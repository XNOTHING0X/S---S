local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local hasSentFlag = ReplicatedStorage:FindFirstChild("NOTHING X HUB")
if not hasSentFlag then
    hasSentFlag = Instance.new("BoolValue")
    hasSentFlag.Name = "NOTHING X HUB"
    hasSentFlag.Value = false
    hasSentFlag.Parent = ReplicatedStorage
end
if not hasSentFlag.Value then
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "",
        Text = "",
        Duration = 5.5,
    })
    StarterGui:SetCore("SendNotification", {
        Title = "NOTHING X HUB",
        Text = "",
        Duration = 5.5,
    })
    StarterGui:SetCore("SendNotification", {
        Title = "",
        Text = "",
        Duration = 5.5,
    })
    hasSentFlag.Value = true
end
