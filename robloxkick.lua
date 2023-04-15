--lua 5.3.5

-- Constants
local KICK_REASON = "You have been kicked from the game." -- Change this value to customize the kick reason

-- Variables
local playerToKick = -- Set this variable to the Player object you want to kick, for example game.Players["PlayerName"]
local kickStartTime = 0
local kickDuration = 5 -- Change this value to adjust the duration of the kick (in seconds)

-- Function to kick the player
local function kickPlayer()
    playerToKick:Kick(KICK_REASON)
end

-- Connect the player's character added event to the kick function
playerToKick.CharacterAdded:Connect(function(character)
    if tick() - kickStartTime < kickDuration then
        kickPlayer()
    end
end)

-- Kick the player immediately
kickPlayer()