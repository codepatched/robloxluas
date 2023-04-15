-- Configuration
local MAX_SPEED = 100 -- Maximum speed threshold for notification
local NOTIFICATION_TITLE = "Speed Alert" -- Title for the notification
local NOTIFICATION_TEXT = "A player is moving too fast!" -- Text for the notification

-- Function to check a player's speed
local function checkSpeed(player)
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local speed = humanoid.WalkSpeed + humanoid.JumpPower
        if speed > MAX_SPEED then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = NOTIFICATION_TITLE,
                Text = NOTIFICATION_TEXT,
                Icon = "",
                Duration = 5
            })
        end
    end
end

-- Check speed for all players every 1 second
while wait(1) do
    for _, player in ipairs(game.Players:GetPlayers()) do
        checkSpeed(player)
    end
end