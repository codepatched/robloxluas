-- KLO ORGANIZATION
-- we love pissing on skids

-- Configuration
local TARGET_PLAYER_NAME = "PlayerNameHere" -- Name of the target player

-- Get the target player
local targetPlayer = game.Players:GetPlayerByName(TARGET_PLAYER_NAME)

-- Check if the target player exists
if targetPlayer then
    -- Get the target player's humanoid
    local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
    
    -- Kill the target player's humanoid
    if targetHumanoid then
        targetHumanoid:TakeDamage(targetHumanoid.Health)
    end
end