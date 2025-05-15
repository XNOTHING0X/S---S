local player = game:GetService("Players").LocalPlayer

-- Używamy ReplicatedStorage do przechowywania flagi globalnie
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local hasSentFlag = ReplicatedStorage:FindFirstChild("HasSentNotification")

-- Tworzymy flagę, jeśli nie istnieje
if not hasSentFlag then
    hasSentFlag = Instance.new("BoolValue")
    hasSentFlag.Name = "HasSentNotification"
    hasSentFlag.Value = false
    hasSentFlag.Parent = ReplicatedStorage
end

-- Wysyłamy powiadomienie tylko raz
if not hasSentFlag.Value then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "",
        Text = "",
        Duration = 5.5,
    })
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "NOTHING X HUB",
        Text = "",
        Duration = 5.5,
    })
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "",
        Text = "",
        Duration = 5.5,
    })
    hasSentFlag.Value = true
end
