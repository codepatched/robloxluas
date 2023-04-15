-- KLO ORGANIZATION
-- skids love eating shit and drinking urine from the roblox "game devs"

-- Replace the "WEBHOOK_URL" with the URL of your Discord webhook
local WEBHOOK_URL = "https://discord.com/api/webhooks/your_webhook_url_here"

-- Function to send a notification to the Discord webhook
local function sendNotification(message)
    local data = {
        content = message
    }

    HttpService:PostAsync(WEBHOOK_URL, game:GetService("HttpService"):JSONEncode(data), Enum.HttpContentType.ApplicationJson, false)
end

-- Function to format a player's information
local function formatPlayerInfo(player)
    local creationDate = player.AccountAge .. " days ago (" .. player.CreatedAt .. ")"
    local info = "**" .. player.Name .. "**\nID: " .. player.UserId .. "\nAccount created: " .. creationDate

    return info
end

-- Event handler for when a player joins the game
game.Players.PlayerAdded:Connect(function(player)
    local message = ":green_circle: " .. formatPlayerInfo(player) .. " has joined the game!"
    sendNotification(message)
end)

-- Event handler for when a player leaves the game
game.Players.PlayerRemoving:Connect(function(player)
    local message = ":red_circle: " .. formatPlayerInfo(player) .. " has left the game!"
    sendNotification(message)
end)
