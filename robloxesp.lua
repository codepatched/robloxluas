--lua 5.3.5 

-- Constants
local BOX_SIZE = Vector3.new(2, 3, 1) -- Change this value to adjust the size of the esp
local BOX_COLOR = Color3.new(1, 0, 0) -- Change this value to adjust the color of the esp

-- Variables
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:WaitForChild("Torso")
local head = character:WaitForChild("Head")
local rootPart = character:WaitForChild("HumanoidRootPart")
local box = Instance.new("Part")
box.Size = BOX_SIZE
box.Anchored = true
box.CanCollide = false
box.Transparency = 0.5
box.Color = BOX_COLOR
box.Parent = workspace

-- Function to update the position and orientation of the box
local function updateBox()
    if torso and head and rootPart and box then
        local boxCFrame = CFrame.new((torso.Position + head.Position) / 2, rootPart.Position)
        box.CFrame = boxCFrame * CFrame.Angles(0, math.rad(180), 0)
    end
end

-- Connect the render step event to the update function
game:GetService("RunService").RenderStepped:Connect(updateBox)