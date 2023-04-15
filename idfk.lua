-- this detects when sound is played
-- it also contains all information of a sound
-- KLS organization

-- Configuration
local webhookUrl = "WEBHOOK_URL_HERE" -- Replace with your webhook URL

-- Function to send a notification to the webhook
local function sendNotification(message)
    local httpService = game:GetService("HttpService")
    local payload = {
        ["content"] = message
    }
    httpService:PostAsync(webhookUrl, httpService:JSONEncode(payload))
end

-- Connect to the sound played event
game:GetService("ReplicatedStorage").RemoteEvent.OnClientEvent:Connect(function(player, sound)
    -- Get the sound information
    local soundInfo = game:GetService("SoundService"):GetSoundFromId(sound.SoundId)

    -- Send a notification with the sound information
    local message = string.format("**%s** played **%s** by **%s** (ID: %d)", player.Name, soundInfo.Name, soundInfo.Creator.Name, soundInfo.SoundId)
    sendNotification(message)
end)