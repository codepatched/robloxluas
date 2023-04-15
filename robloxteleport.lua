--lua 5.3.5 
-- Configuration
local TARGET_PLAYER_NAME = "PlayerNameHere" -- Name of the target player

-- Get the target player
local targetPlayer = game.Players:GetPlayerByName(TARGET_PLAYER_NAME)

-- Get the character
local character = script.Parent

-- Loop forever
while true do
    -- Wait for a short amount of time
    wait(0.01)
    
    -- Check if the target player exists and is visible
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        -- Teleport the character to the target player's position
        character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
    end
end