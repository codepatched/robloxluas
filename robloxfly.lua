--lua 5.3.5

-- Constants
local FLY_SPEED = 100 -- Change this value to adjust the fly speed
local FLY_KEY = Enum.KeyCode.Space -- Change this value to use a different key

-- Variables
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local flyEnabled = false

-- Functions
local function onFly()
    if flyEnabled then
        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        flyEnabled = false
    else
        humanoid:ChangeState(Enum.HumanoidStateType.Flying)
        humanoid.PlatformStand = true
        flyEnabled = true
    end
end

-- Key binding
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == FLY_KEY and not gameProcessed then
        onFly()
    end
end)

-- Fly speed
humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
humanoid.FlySpeed = FLY_SPEED
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