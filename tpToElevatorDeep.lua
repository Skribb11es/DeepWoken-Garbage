local diffPos = game:GetService("Workspace").Mechanisms.TrialElevator.Platform.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position

colParts = {}

function disableCol(part)
    part.CanCollide = false
    return true
end

for i,v in pairs(game.Workspace:GetDescendants()) do
    if pcall(disableCol, v) == true then
        colParts[v] = v
    end
end

local xVal = diffPos.X / 128
local yVal = diffPos.Y / 128
local zVal = diffPos.Z / 128

for i=1,128 do
    wait(.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,10,0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(xVal,yVal,zVal)
end

for i,v in pairs(colParts) do
    v.CanCollide = true
end
