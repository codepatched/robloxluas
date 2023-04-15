--lua 5.3.5 

-- Configuration
local WARNING_MESSAGE = "You have been warned for breaking the rules. Please stop or further action will be taken."
local TARGET_PLAYER_NAME = "PlayerNameHere" -- Name of the target player

-- Get the target player
local targetPlayer = game.Players:GetPlayerByName(TARGET_PLAYER_NAME)

-- Check if the target player exists
if targetPlayer then
    -- Send warning message to the target player
    targetPlayer:SendNotification(WARNING_MESSAGE, 5)
else
    print("Target player does not exist.")
end