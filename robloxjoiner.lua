-- this script detects when player joined and when he left
-- KILL ALL SKIDS
-- It's all printed out in the developer console

function onPlayerJoin(player)
    print("Player " .. player.Name .. " has joined the game.")
end

function onPlayerLeave(player)
    print("Player " .. player.Name .. " has left the game.")
end

game.Players.PlayerAdded:Connect(onPlayerJoin)
game.Players.PlayerRemoving:Connect(onPlayerLeave)