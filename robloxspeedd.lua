local player = game:GetService("Players").LocalPlayer
local speed = 50 -- change this value to adjust the speed

-- Function to handle player input
local function onKeyPressed(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.Space then
        player.Character.Humanoid.WalkSpeed = speed
    end
end

-- Connect the input event to the function
game:GetService("UserInputService").InputBegan:Connect(onKeyPressed)